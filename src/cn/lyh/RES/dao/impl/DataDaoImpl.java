package cn.lyh.RES.dao.impl;

import cn.lyh.RES.dao.DaoHelper;
import cn.lyh.RES.dao.DataDao;
import cn.lyh.RES.entity.timeData;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataDaoImpl extends DaoHelper implements DataDao {
    @Override
    public List<timeData> listTime(String sql, Object[] keys){
        return this.query(sql, keys, timeData.class);
    };
}
