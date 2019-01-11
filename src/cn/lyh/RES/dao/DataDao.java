package cn.lyh.RES.dao;

import java.util.List;
import cn.lyh.RES.entity.timeData;
import cn.lyh.RES.entity.tableName;

public interface DataDao {
    //获取失效时间数据
    public List<timeData> listTime(String sql, Object[] keys);

    //获取失效数据列表
    public List<tableName> listDataName(String sql, Object[] keys);

    //新增数据
    public boolean addDataName(String sql, tableName bean);

    //新建失效数据表
    public boolean createData(String sql);

    //写入失效数据
    public boolean addData(String sql, timeData bean);
}
