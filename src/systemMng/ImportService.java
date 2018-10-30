package systemMng;

import Util.DBConnect;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import hibernatePOJO.DevicesThreshold;
import jxl.Sheet;
import jxl.Workbook;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ImportService {

    /**
     * 查询指定目录中电子表格中所有的数据
     * @param file 文件完整路径
     * @return
     */
    public static List<DevicesThreshold> getAllByExcel(String file) {
        List<DevicesThreshold> list = new ArrayList<>();
        try {
            Workbook rwb = Workbook.getWorkbook(new File(file));
            Sheet rs = rwb.getSheet("Sheet1"); //或者rwb.getSheet(0)
            int clos = rs.getColumns();//得到所有的列
            int rows = rs.getRows();//得到所有的行

            for (int i = 1; i < rows; i++) {
                for (int j = 0; j < clos; j++) {
                    //第一个是列数，第二个是行数
                    //dtid自增或更新
                    String name=rs.getCell(j++, i).getContents();
                    String dname=rs.getCell(j++, i).getContents();//默认最左边编号也算一列 所以这里得j++
                    String classify=rs.getCell(j++, i).getContents();
                    String unit=rs.getCell(j++, i).getContents();
                    String cellvalstr=rs.getCell(j++, i).getContents();
                    String floorvalstr=rs.getCell(j++, i).getContents();
                    String ismarkstr=rs.getCell(j++, i).getContents();
                    String levelstr=rs.getCell(j++, i).getContents();

                    Double cellval = null;
                    Double floorval = null;
                    Integer ismark = 0;
                    Integer level = 1;

                    if(cellvalstr != "")
                        cellval = Double.parseDouble(cellvalstr);
                    if(floorvalstr != "")
                        floorval = Double.parseDouble(floorvalstr);
                    if(ismarkstr != "")
                        ismark = Integer.parseInt(ismarkstr);
                    if(levelstr != "")
                        level = Integer.parseInt(levelstr);

                    DeviceDAO dao = new DeviceDAOImpl();
                    String did = dao.getDeviceIDByName(dname);

                    DevicesThreshold dt = new DevicesThreshold();

                    dt.setDtid((i-1)*clos + j);
                    dt.setName(name);
                    dt.setDid(did);
                    dt.setClassify(classify);
                    dt.setUnit(unit);
                    dt.setCellval(cellval);
                    dt.setFloorval(floorval);
                    dt.setIsmark(ismark);
                    dt.setLevel(level);

                    list.add(dt);
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 通过Id判断是否存在
     * @param id
     * @return
     */
    public static boolean isExist(int id){
        try {
            DBConnect db=new DBConnect();
            ResultSet rs=db.executeQuery("select * from stu where id='"+ id + "'");
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        isExist(1);
    }

}