package systemMng.dao.impl;

import Util.DBConnect;
import Util.HBSessionDaoImpl;
import hibernatePOJO.CityBank;
import hibernatePOJO.Computerroom;
import hibernatePOJO.OrgnizationStructure;
import hibernatePOJO.ProvinceBank;
import systemMng.dao.OrgnizationDAO;

import java.sql.PreparedStatement;
import java.util.List;

public class OrgnizationDAOImpl implements OrgnizationDAO {

    DBConnect db = null;
    PreparedStatement ps = null;

    public List getOrgnizationTree() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<OrgnizationStructure> list = hbsessionDao.search("FROM OrgnizationStructure");

        return list;
    }

    /*删除省行
    1.从省行表中删除省行
    2.从组织表中删除总-省组织关系


    3.从市行表中删除与省行关联的市行记录
    4.从组织表中删除省-市组织关系

    5.从机房表中删除与省行关联的机房记录
    6.从组织表中删除省-机房组织关系

    7.从机房表中删除与 省行关联的市行的机房记录
    8.从组织表中删除市-机房组织关系

    */
    public Boolean delProvinceOrgnization(String pbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            ProvinceBank pvbank = (ProvinceBank) hbsessionDao.getFirst("FROM ProvinceBank where pbid='" + pbid + "'");

            // 1.从省行表中删除省行
            String sql1 = "Delete FROM province_bank Where pbid='" + pbid + "'";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);

            List<OrgnizationStructure> orglist =
                    hbsessionDao.search("FROM OrgnizationStructure where id ='" + pbid + "'");

            if (orglist != null) {
                for (int i = 0; i < orglist.size(); i++) {

                    String pid = orglist.get(i).getPid();

                    if (pid.equals("1")) {
                        // 2.从组织表中删除总-省组织关系
                        String sql2 = "Delete FROM orgnization_structure Where id='" + pbid + "'";

                        ps = db.getPs(sql2);
                        ps.executeUpdate(sql2);
                    }
                }
            }

            List<OrgnizationStructure> orglist2 =
                    hbsessionDao.search("FROM OrgnizationStructure where pid ='" + pbid + "'");

            if (orglist2 != null) {
                for (int i = 0; i < orglist2.size(); i++) {

                    String id = orglist2.get(i).getPid();

                    if (id.length() == 4) {
                        //3.从市行表中删除与省行关联的市行记录
                        String sql3 = "Delete FROM city_bank Where cbid='" + id + "'";

                        ps = db.getPs(sql3);
                        ps.executeUpdate(sql3);

                        //4.从组织表中删除省-市组织关系
                        String sql4 = "Delete FROM orgnization_structure Where id='" + id + "'";

                        ps = db.getPs(sql4);
                        ps.executeUpdate(sql4);

                    } else if (id.length() == 5) {
                        //5.从机房表中删除与省行关联的机房记录
                        String sql5 = "Delete FROM computerroom Where rid='" + id + "'";

                        ps = db.getPs(sql5);
                        ps.executeUpdate(sql5);

                        //6.从组织表中删除省-机房组织关系
                        String sql6 = "Delete FROM orgnization_structure Where id='" + id + "'";

                        ps = db.getPs(sql6);
                        ps.executeUpdate(sql6);
                    }
                }
            }
            //7.从机房表中删除与 省行关联的市行的机房记录
            //8.从组织表中删除市-机房组织关系


            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    /*
    删除市行
    1.从市行表中删除市行
    2.从省行表中删除市行记录
    3.删除市行下对应的机房记录
    4.从组织表中删除省-市组织关系
    5.从组织表中删除市-机房组织关系
     */
    public Boolean delCityOrgnization(String cbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            //1.从市行表中删除市行
            CityBank cbank = (CityBank) hbsessionDao.getFirst("FROM CityBank where cbid='" + cbid + "'");

            String sql1 = "Delete FROM city_bank Where cbid='" + cbid + "'";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);

            //  2.从省行表中删除市行记录
            OrgnizationStructure org = (OrgnizationStructure) hbsessionDao.getFirst("FROM OrgnizationStructure where " +
                    "id ='" + cbid + "'");
            if (org.getPid() != null) {
                String pbid = org.getPid();

                ProvinceBank pvbank =
                        (ProvinceBank) hbsessionDao.getFirst("FROM ProvinceBank where pbid ='" + pbid + "'");
                String cbidstr = pvbank.getCbidset();

                cbidstr = cbidstr.replace(cbid, "");

                String sql2 = "update province_bank set cbidset='" + cbidstr + "' where pbid='" + pvbank.getPbid() +
                        "'";

                ps = db.getPs(sql2);
                ps.executeUpdate(sql2);
            }

            //    3.删除市行下对应的机房记录
            String comproom = cbank.getCompRoom();
            String comproomset[] = comproom.split("，");

            for (int i = 0; i < comproomset.length; i++) {
                if (comproomset[i] != "") {
                    String sql3 = "Delete FROM computerroom Where rid='" + comproomset[i] + "'";

                    ps = db.getPs(sql3);
                    ps.executeUpdate(sql3);
                }
            }

            //    4.从组织表中删除省-市组织关系
            String sql4 = "Delete FROM orgnization_structure Where id='" + cbid + "'";

            ps = db.getPs(sql4);
            ps.executeUpdate(sql4);

            // 5.从组织表中删除市-机房组织关系
            for (int i = 0; i < comproomset.length; i++) {
                if (comproomset[i] != "") {
                    String sql5 = "Delete FROM orgnization_structure Where id='" + comproomset[i] + "'";

                    ps = db.getPs(sql5);
                    ps.executeUpdate(sql5);
                }
            }

            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    /*
    删除机房
    1.从机房表中删除机房
    2.从省行表中删除机房记录
    3.从市行表中删除机房记录
    4.删除设备表中，机房下对应的设备记录
    5.从组织表中删除总-机房组织关系
    6.从组织表中删除省-机房组织关系
    7.从组织表中删除市-机房组织关系
     */
    public Boolean delComputerroomOrgnization(String rid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            Computerroom computerroom = (Computerroom) hbsessionDao.getFirst("FROM Computerroom where rid='" + rid +
                    "'");

            // 1.从机房表中删除机房
            String sql1 = "Delete FROM computerroom Where rid='" + rid + "'";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);

            List<OrgnizationStructure> orglist = hbsessionDao.search("FROM OrgnizationStructure where id ='" + rid +
                    "'");

            if (orglist != null) {
                for (int i = 0; i < orglist.size(); i++) {

                    String pid = orglist.get(i).getPid();

                    if (pid.equals("1")) {
                        //2.从组织表中删除总-机房组织关系
                        String sql2 = "Delete FROM OrgnizationStructure Where id='" + rid + "'";

                        ps = db.getPs(sql2);
                        ps.executeUpdate(sql2);
                    } else if (pid.length() == 3) {
                        // 3.从省行表中删除机房记录
                        // 4.从组织表中删除省-机房组织关系
                        ProvinceBank pvbank =
                                (ProvinceBank) hbsessionDao.getFirst("FROM ProvinceBank where pbid ='" + pid + "'");

                        if (pvbank != null) {
                            String comproomstr = pvbank.getCompRoom();
                            comproomstr = comproomstr.replace(pid, "");

                            String sql3 =
                                    "update ProvinceBank set compRoom='" + comproomstr + "' where pbid='" + pid + "'";

                            ps = db.getPs(sql3);
                            ps.executeUpdate(sql3);
                        }

                        String sql4 = "Delete FROM OrgnizationStructure Where id='" + rid + "'";

                        ps = db.getPs(sql4);
                        ps.executeUpdate(sql4);

                    } else if (pid.length() == 4) {
                        //5.从市行表中删除机房记录
                        //6.从组织表中删除市-机房组织关系

                        CityBank cbank = (CityBank) hbsessionDao.getFirst("FROM CityBank where cbid ='" + pid + "'");

                        if (cbank != null) {
                            String comproomstr = cbank.getCompRoom();
                            comproomstr = comproomstr.replace(rid, "");

                            String sql5 = "update city_bank set compRoom='" + comproomstr + "' where cbid='" + pid +
                                    "'";

                            ps = db.getPs(sql5);
                            ps.executeUpdate(sql5);
                        }

                        String sql6 = "Delete FROM orgnization_structure Where id='" + rid + "'";

                        ps = db.getPs(sql6);
                        ps.executeUpdate(sql6);

                    }
                }
            }
            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    public Boolean updateProvinceOrgnization(String pbid, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        String hql1 = "update OrgnizationStructure orgs set orgs.name='" + name + "' where orgs.id='" + pbid + "'";
        rt1 = hbsessionDao.update(hql1);
        String hql2 = "update ProvinceBank prov set prov.pbname='" + name + "' where prov.pbid='" + pbid + "'";
        rt2 = hbsessionDao.update(hql2);

        return rt1 && rt2;
    }

    public Boolean updateCityOrgnization(String cbid, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        String hql1 = "update OrgnizationStructure orgs set orgs.name='" + name + "' where orgs.id='" + cbid + "'";
        rt1 = hbsessionDao.update(hql1);
        String hql2 = "update CityBank cb set cb.cbname='" + name + "' where cb.cbid='" + cbid + "'";
        rt2 = hbsessionDao.update(hql2);

        return rt1 && rt2;
    }

    public Boolean updateComputerroomOrgnization(String rid, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        String hql1 = "update OrgnizationStructure orgs set orgs.name='" + name + "' where orgs.id='" + rid + "'";
        rt1 = hbsessionDao.update(hql1);
        String hql2 = "update Computerroom cr set cr.rname='" + name + "' where cr.rid='" + rid + "'";
        rt2 = hbsessionDao.update(hql2);

        return rt1 && rt2;
    }

    /*
       新建一个ProvinceBank
       新建一个组织关系，总行与省行的
        */
    public Boolean addProvinceOrgnization(String pbid, String province) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            ProvinceBank maxcr = (ProvinceBank) hbsessionDao.getFirst("FROM ProvinceBank Order by pbid desc");

            Integer maxid;
            if (maxcr == null) {
                maxid = 100;
            } else {
                maxid = Integer.parseInt(maxcr.getPbid()) + 1;
            }

            // 创造SQL语句
            String sql1 = "INSERT INTO province_bank ( pbname,pbid,didset,tempset,cidset,cbidset,compRoom ) " +
                    "VALUES ( '" + province + "', '" + maxid.toString() + "','','','','','' )";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);

            String sql2 =
                    "INSERT INTO orgnization_structure ( name,pid,id ) " + "VALUES ( '" + province + "','" + pbid +
                            "', '" + maxid.toString() + "')";

            ps = db.getPs(sql2);
            ps.executeUpdate(sql2);

            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    /*
    新建一个CityBank
    修改ProvinceBank中的cbidset字段，增加新建的市行的id
    新建一个组织关系，市行与省行的
     */
    public Boolean addCityOrgnization(String pbid, String city) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            CityBank maxcr = (CityBank) hbsessionDao.getFirst("FROM CityBank Order by cbid desc");

            Integer maxid;
            if (maxcr == null) {
                maxid = 1000;
            } else {
                maxid = Integer.parseInt(maxcr.getCbid()) + 1;
            }


            String sql1 =
                    "INSERT INTO city_bank ( cbname,cbid,didset,tempset,cidset,compRoom ) " + "VALUES ( '" + city +
                            "', '" + maxid.toString() + "','','','','' )";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);


            String sql2 =
                    "INSERT INTO orgnization_structure ( name,pid,id ) " + "VALUES ( '" + city + "','" + pbid + "', " +
                            "'" + maxid.toString() + "')";

            ps = db.getPs(sql2);
            ps.executeUpdate(sql2);


            ProvinceBank pvbank = (ProvinceBank) hbsessionDao.getFirst("FROM ProvinceBank WHERE pbid='" + pbid + "'");
            if (pvbank != null) {
                String cbidstr = pvbank.getCbidset();

                if (cbidstr != null) {
                    if (!cbidstr.equals("")) {
                        String tempstr = "，" + maxid.toString();
                        cbidstr += tempstr;
                    } else {
                        cbidstr += maxid.toString();
                    }
                } else {
                    cbidstr += maxid.toString();
                }

                String sql3 = "UPDATE province_bank SET cbidset='" + cbidstr + "' WHERE pbid='" + pbid + "'";

                ps = db.getPs(sql3);
                ps.executeUpdate(sql3);

            }

            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    /*
    新建一个Computerroom
    新建一个组织关系，总行与机房的
     */
    public Boolean addComputerroomOrgnizationUnderHeadBank(String orgid, String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            Computerroom maxcr = (Computerroom) hbsessionDao.getFirst("FROM Computerroom Order by rid desc");

            Integer maxrid;
            if (maxcr == null) {
                maxrid = 10000;
            } else {
                maxrid = Integer.parseInt(maxcr.getRid()) + 1;
            }

            // 创造SQL语句
            String sql1 =
                    "INSERT INTO computerroom ( rname,rid,didset,tempset,cidset ) " + "VALUES ( '" + computerroom +
                            "', '" + maxrid.toString() + "','','','' )";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);

            String sql2 =
                    "INSERT INTO orgnization_structure ( name,pid,id ) " + "VALUES ( '" + computerroom + "','" + orgid + "', '" + maxrid.toString() + "')";

            ps = db.getPs(sql2);
            ps.executeUpdate(sql2);

            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    /*
   新建一个Computerroom
   修改ProvinceBank中的compRoom字段，增加新建的机房的id
   新建一个组织关系，机房与省行的
    */
    public Boolean addComputerroomOrgnizationUnderProvinceBank(String pbid, String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            Computerroom maxcr = (Computerroom) hbsessionDao.getFirst("FROM Computerroom Order by rid desc");

            Integer maxrid;
            if (maxcr == null) {
                maxrid = 10000;
            } else {
                maxrid = Integer.parseInt(maxcr.getRid()) + 1;
            }

            String sql1 =
                    "INSERT INTO computerroom ( rname,rid,didset,cidset,tempset ) " + "VALUES ( '" + computerroom +
                            "', '" + maxrid.toString() + "','','','' )";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);


            String sql2 =
                    "INSERT INTO orgnization_structure ( name,pid,id ) " + "VALUES ( '" + computerroom + "','" + pbid + "', '" + maxrid.toString() + "')";

            ps = db.getPs(sql2);
            ps.executeUpdate(sql2);


            ProvinceBank pvbank = (ProvinceBank) hbsessionDao.getFirst("FROM ProvinceBank WHERE pbid='" + pbid + "'");
            if (pvbank != null) {
                String ridstr = pvbank.getCompRoom();

                if (ridstr != null) {
                    if (!ridstr.equals("")) {
                        String tempstr = "，" + maxrid.toString();
                        ridstr += tempstr;
                    } else {
                        ridstr += maxrid.toString();
                    }
                } else {
                    ridstr += maxrid.toString();
                }

                String sql3 = "UPDATE province_bank SET compRoom='" + ridstr + "' WHERE pbid='" + pbid + "'";

                ps = db.getPs(sql3);
                ps.executeUpdate(sql3);

            }

            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }

    /*
    新建一个Computerroom
    修改CityBank中的compRoom字段，增加新建的机房id
    新建一个组织关系，机房与市行的
     */
    public Boolean addComputerroomOrgnizationUnderCityBank(String cbid, String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        try {
            // 获取数据库链接
            db = new DBConnect();
            // 开启事务
            //不把其设置为true之前都是一个当作一个事务来处理
            db.setAutoCommit(false);

            Computerroom maxcr = (Computerroom) hbsessionDao.getFirst("FROM Computerroom Order by rid desc");

            Integer maxrid;
            if (maxcr == null) {
                maxrid = 10000;
            } else {
                maxrid = Integer.parseInt(maxcr.getRid()) + 1;
            }

            String sql1 =
                    "INSERT INTO computerroom ( rname,rid,didset,cidset,tempset ) " + "VALUES ( '" + computerroom +
                            "', '" + maxrid.toString() + "','','','' )";

            ps = db.getPs(sql1);
            ps.executeUpdate(sql1);


            String sql2 =
                    "INSERT INTO orgnization_structure ( name,pid,id ) " + "VALUES ( '" + computerroom + "','" + cbid + "', '" + maxrid.toString() + "')";

            ps = db.getPs(sql2);
            ps.executeUpdate(sql2);


            CityBank cbank = (CityBank) hbsessionDao.getFirst("FROM CityBank WHERE cbid='" + cbid + "'");
            if (cbank != null) {
                String ridstr = cbank.getCompRoom();

                if (ridstr != null) {
                    if (!ridstr.equals("")) {
                        String tempstr = "，" + maxrid.toString();
                        ridstr += tempstr;
                    } else {
                        ridstr += maxrid.toString();
                    }
                } else {
                    ridstr += maxrid.toString();
                }

                String sql3 = "UPDATE city_bank SET compRoom='" + ridstr + "' WHERE cbid='" + cbid + "'";

                ps = db.getPs(sql3);
                ps.executeUpdate(sql3);

            }

            // 提交事务
            db.commit();

            rt = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {// 回滚事务,撤销上面对事务的所有操作
                db.rollback();
            } catch (Exception e2) {
            }
        } finally {
            // 关闭Statement
            try {
                ps.close();
            } catch (Exception e) {
            }
            // 关闭Connection
            try {
                db.free();
            } catch (Exception e) {
            }
        }

        return rt;
    }


}
