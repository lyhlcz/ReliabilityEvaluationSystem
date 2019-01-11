package cn.lyh.RES.service.ipml;

import cn.lyh.RES.dao.DataDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.lyh.RES.service.DataService;
import cn.lyh.RES.entity.timeData;
import cn.lyh.RES.entity.tableName;

import java.util.List;

@Service
public class DataServiceImpl implements DataService {
    @Autowired
    private DataDao dDao;

    @Override
    public List<timeData> getData(String sqlName){
        String sql = "select * from " + sqlName;
        return dDao.listTime(sql, new Object[]{});
    }

    @Override
    public List<tableName> getDataNameList(){
        String sql = "select * from datalist";
        return dDao.listDataName(sql, new Object[]{});
    }

    @Override
    public boolean importNewData(tableName name, List<timeData> data){
        String n = name.getDataName();
        if (dDao.addDataName("insert into datalist (dataName) values (:dataName)", name)){
            String sql = "create table `" + n + "` (t char(11))";
            if (dDao.createData(sql)) {
                for (timeData d : data) {
                    dDao.addData("insert into " + n + " (t) values (:t)", d);
                }
                return true;
            }
            else return false;
        }
        else return false;
    }
}
