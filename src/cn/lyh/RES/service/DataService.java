package cn.lyh.RES.service;

import java.util.List;
import cn.lyh.RES.entity.timeData;

public interface DataService {
    public List<timeData> getData(String sqlName);
}
