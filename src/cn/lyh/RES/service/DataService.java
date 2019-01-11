package cn.lyh.RES.service;

import java.util.List;
import cn.lyh.RES.entity.timeData;
import cn.lyh.RES.entity.tableName;

public interface DataService {
    //获取失效数据
    public List<timeData> getData(String sqlName);

    //获取数据列表
    public List<tableName> getDataNameList();

    //导入新数据
    public boolean importNewData(tableName dataName,List<timeData> data);
}
