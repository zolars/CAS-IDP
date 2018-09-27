package Util;

import hibernatePOJO.DevicesThreshold;
import hibernatePOJO.User;
import jxl.Workbook;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import java.io.File;
import java.security.MessageDigest;
import java.util.List;

public class test
{
    public static void main(String[] args) {
        //得到表格中所有的数据
        List<DevicesThreshold> listExcel = ImportService.getAllByExcel("F:/devices_threshold.xls");
            /*//得到数据库表中所有的数据
            List<StuEntity> listDb=StuService.getAllByDb();*/

        for (DevicesThreshold stuEntity : listExcel) {
               /* int id = stuEntity.getId();
                if (!DevicesThreshold.isExist(id)) {*/
            //不存在就添加

            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

            Boolean rt = hbsessionDao.insert(stuEntity);

            System.out.println("execel bool："+rt);

               /* } else {
                    //存在就更新
                    String sql = "update stu set name=?,sex=?,num=? where id=?";
                    String[] str = new String[]{stuEntity.getName(), stuEntity.getSex(), stuEntity.getNum() + "", id + ""};
                    db.AddU(sql, str);
                }*/
        }
    }

}
