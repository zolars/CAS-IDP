package grabData;

import Util.HBSessionDaoImpl;
import com.alibaba.fastjson.JSON;
import hibernatePOJO.BasicSetting;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class TransientUtil {
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static String code = "0001";
    private static String checkCode = "wizpower";
    private static int interval = 1; //默认一次取1分钟内的暂态事件

    /*
      根据请求体创建请求帧，返回类型为List,
      由于一个请求帧中的MsgContent最多只能为2048个字节，所以一次请求可能会被分割为多个请求帧
     */
    public static List<ByteBuf> createMsg() {
        TransientRequest tr = createTransientRequest();
        String content = JSON.toJSONString(tr);
        List<ByteBuf> list = new ArrayList();
        int frame_num = content.length()/2048;    //请求帧帧数
        int remain = content.length()%2048;
        if (0 != remain) {
            frame_num += 1;   //请求帧总帧数
        }
        for (int i = 1; i <= frame_num; i++) {
            //计算当前请求帧中携带的消息体,cmc：currentMessageContent
            String cmc = null;
            byte[] cmcBytes = null;
            if (i == frame_num) {
                cmc = content.substring((i-1)*2048, content.length());
            } else {
                cmc = content.substring((i-1)*2048, i*2048);
            }
            try {
                cmcBytes = cmc.getBytes("UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            ByteBuf buf = Unpooled.buffer();
            buf.writeShort(0x5a5a); //Sync
            buf.writeShort(10 + cmcBytes.length + 16); //DataLength
            buf.writeShort(Integer.parseInt(code)); //MsgType
            buf.writeShort(frame_num); //total
            buf.writeShort(i); //current
            buf.writeBytes(cmcBytes); //MsgContent
            try {
                byte[] temp = new byte[buf.readableBytes()];
                buf.getBytes(0, temp);
                //ChkSum
                buf.writeBytes(md5(mergeByteArray(temp, checkCode.getBytes("UTF-8"))));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            list.add(buf);
        }
        return list;
    }
    //返回一个请求体对象,code为"0001",starttime为当前时间往前24个小时，endtime为当前时间
    public static TransientRequest createTransientRequest() {
        HBSessionDaoImpl hbSessionDao = new HBSessionDaoImpl();
        List<BasicSetting> listbase = hbSessionDao.search("FROM BasicSetting");
        interval = listbase.get(0).getThansentinterval();

        TransientRequest tr = new TransientRequest();
        tr.setCode(code);
        Calendar c = Calendar.getInstance();
        c.setTime(new Date());
        tr.setEndtime(sdf.format(c.getTime()));
        c.add(Calendar.MINUTE, -interval); //interval
        tr.setStarttime(sdf.format(c.getTime()));
        return tr;
    }
    //byte数组计算MD5摘要
    public static byte[] md5(byte[] msg) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        md.update(msg);
        return md.digest();
    }
    //合并两个byte数组
    public static byte[] mergeByteArray(byte[] array1, byte[] array2) {
        if (null != array1 && null != array2) {
            byte[] out = new byte[array1.length + array2.length];
            System.arraycopy(array1,0, out, 0, array1.length);
            System.arraycopy(array2,0, out, array1.length, array2.length);
            return out;
        }
         return null;
    }

    public static String getCode() {
        return code;
    }

    public static void setCode(String code) {
        TransientUtil.code = code;
    }

    public static String getCheckCode() {
        return checkCode;
    }

    public static void setCheckCode(String checkCode) {
        TransientUtil.checkCode = checkCode;
    }

    public static int getInterval() {
        return interval;
    }

    public static void setInterval(int interval) {
        TransientUtil.interval = interval;
    }
}
