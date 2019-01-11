package cn.lyh.RES.dao.impl;

import cn.lyh.RES.dao.DaoHelper;
import cn.lyh.RES.dao.DataDao;
import cn.lyh.RES.entity.timeData;
import cn.lyh.RES.entity.tableName;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataDaoImpl extends DaoHelper implements DataDao {
    @Override
    public List<timeData> listTime(String sql, Object[] keys){
        return this.query(sql, keys, timeData.class);
    }

    @Override
    //获取失效数据列表
    public List<tableName> listDataName(String sql, Object[] keys){
        return this.query(sql, keys, tableName.class);
    }

    @Override
    //新增数据
    public boolean addDataName(String sql, tableName bean){
        return this.insertByBean(sql, bean);
    }

    @Override
    //新建失效数据表
    public boolean createData(String sql){
        return this.update(sql);
    }

    @Override
    //写入失效数据
    public boolean addData(String sql, timeData bean){
        return this.insertByBean(sql, bean);
    }
}
