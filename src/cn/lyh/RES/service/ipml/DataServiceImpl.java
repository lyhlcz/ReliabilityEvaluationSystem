package cn.lyh.RES.service.ipml;

import cn.lyh.RES.dao.DataDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.lyh.RES.service.DataService;
import cn.lyh.RES.entity.timeData;

import java.util.List;

@Service
public class DataServiceImpl implements DataService {
    @Autowired
    private DataDao dDao;

    @Override
    public List<timeData> getData(String sqlName){
        String sql = "select * from " + sqlName;
        return dDao.listTime(sql,new Object[]{});
    }
}
