package deviceJobManager;

import grabData.*;
import hibernatePOJO.Devices;
import io.netty.bootstrap.Bootstrap;
import io.netty.channel.*;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;

import java.util.HashMap;

public class DeviceManager {
    //type: 1-dataOnline, 2-transient, 3-overLimit, 4-threshold, 5-tempData, 6-ctrlData

    /*2019-03-04 wubo*/
    private static HashMap<Devices, Boolean> firstConnection = new HashMap<Devices, Boolean>();

    //add device
    private static HashMap<String, ChannelHandlerContext> ctxMap = new HashMap<String, ChannelHandlerContext>();

    public static boolean addDevice(String host, int port, String did, int type) {
//        if(checkNetwork(host,port)==false){
//            return false;
//        }
        switch (type) {
            case 1:
                new DataOnlineClient(host, port, did).start();
                break;
            case 2:
                new TransientClient(host, port, did).start();
                break;
            case 3:
                new OverLimitClient(host, port, did).start();
                break;
            case 4:
//                new ThresholdClient(host,port,did).start();
                break;
            case 5:
                new TempDataClient(host, port, did).start();
                break;
            case 6:
                new CtrlDataClient(host, port, did).start();
                break;
            default:
                ;
        }
        return true;
    }

    //remove device
    public static boolean removeDevice(String did, int type) {
        if (ctxMap.get(did + "-" + type) == null) {
            return false;
        }
        ctxMap.get(did + "-" + type).close();
        return true;
//        switch (type){
//            case 1:
//                ctxMap.get(did+"-1").close();
//                break;
//            case 2:
//                ctxMap.get(did+"-2").close();
//                break;
//            case 3:
//                ctxMap.get(did+"-3").close();
//                break;
//            case 4:
////                ctxMap.get(did+"-4").close();
//                break;
//            case 5:
//                ctxMap.get(did+"-5").close();
//                break;
//            case 6:
//                ctxMap.get(did+"-6").close();
//                break;
//            default:
//                ;
//        }
    }

    //update device
    public static boolean updateDevice(String host, int port, String did, int type) {
//        if(removeDevice(did,type) &&  addDevice(host,port,did,type)){
//            return true;
//        }
//        else {
//            return false;
//        }
//        removeDevice(did, type);
//        if()
        removeDevice(host, port);
        addDevice(host, port, did, type);
        return true;
    }


    public static HashMap<String, ChannelHandlerContext> getCtxMap() {
        return ctxMap;
    }

    public static void setCtxMap(HashMap<String, ChannelHandlerContext> ctxMap) {
        DeviceManager.ctxMap = ctxMap;
    }

    public static boolean checkNetwork(String host, int port) {
        boolean isAccesible = false;

        EventLoopGroup workerGroup = new NioEventLoopGroup();
        try {
            Bootstrap b = new Bootstrap();
            b.group(workerGroup);
            b.channel(NioSocketChannel.class);
            b.option(ChannelOption.SO_KEEPALIVE, Boolean.valueOf(true));
            b.handler(new ChannelInitializer<SocketChannel>() {
                public void initChannel(SocketChannel ch)
                        throws Exception {
                    ch.pipeline().addLast();
                }
            });
            ChannelFuture f = b.connect(host, port).sync();
            if (f.isSuccess()) {
                isAccesible = true;
            } else {
                isAccesible = false;
            }
        } catch (Exception e) {
            isAccesible = false;
        } finally {
            workerGroup.shutdownGracefully();
        }
        return isAccesible;

    }

    public static HashMap<Devices, Boolean> getFirstConnection() {
        return firstConnection;
    }

    public static void setFirstConnection(HashMap<Devices, Boolean> firstConnection) {
        DeviceManager.firstConnection = firstConnection;
    }
}

