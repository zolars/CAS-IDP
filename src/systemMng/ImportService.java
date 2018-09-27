package Util;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import hibernatePOJO.DevicesThreshold;
import jxl.Sheet;
import jxl.Workbook;


public class ImportService {

    /**
     * 查询指定目录中电子表格中所有的数据
     * @param file 文件完整路径
     * @return
     */
    public static List<DevicesThreshold> getAllByExcel(String file){
        List<DevicesThreshold> list=new ArrayList<DevicesThreshold>();
        try {
            Workbook rwb=Workbook.getWorkbook(new File(file));
            Sheet rs=rwb.getSheet("Sheet1"); //或者rwb.getSheet(0)
            int clos=rs.getColumns();//得到所有的列
            int rows=rs.getRows();//得到所有的行

            System.out.println(clos+" rows:"+rows);
            for (int i = 1; i < rows; i++) {
                for (int j = 0; j < clos; j++) {
                    //第一个是列数，第二个是行数
                    //String dtid=rs.getCell(j++, i).getContents();
                    String did=rs.getCell(j++, i).getContents();//默认最左边编号也算一列 所以这里得j++
                    String classify=rs.getCell(j++, i).getContents();
                    String unit=rs.getCell(j++, i).getContents();
                    String cellvalstr=rs.getCell(j++, i).getContents();
                    String floorvalstr=rs.getCell(j++, i).getContents();
                    String aidstr=rs.getCell(j++, i).getContents();
                    String cidstr=rs.getCell(j++, i).getContents();

                    Double cellval = 0.00;
                    Double floorval = 0.00;
                    Integer aid = 0;
                    Integer cid = 0;
                    if(cellvalstr != "")
                        cellval = Double.parseDouble(cellvalstr);
                    if(floorvalstr != "")
                        floorval = Double.parseDouble(floorvalstr);
                    if(cidstr != "")
                        aid = Integer.parseInt(aidstr);
                    if(cidstr != "")
                        cid = Integer.parseInt(cidstr);

                    System.out.println("did:"+did+" classify:"+classify+" unit:"+unit+" cellval:"+cellval);

                    DevicesThreshold dt = new DevicesThreshold();

                    dt.setDtid(999);
                    dt.setDid(did);
                    dt.setClassify(classify);
                    dt.setUnit(unit);
                    dt.setCellval(cellval);
                    dt.setFloorval(floorval);
                    dt.setAid(aid);
                    dt.setCid(cid);

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
        /*List<StuEntity> all=getAllByDb();
        for (StuEntity stuEntity : all) {
            System.out.println(stuEntity.toString());
        }*/

        System.out.println(isExist(1));

    }

}