package cn.lyh.RES.dao;

import java.util.List;
import cn.lyh.RES.entity.timeData;

public interface DataDao {
    public List<timeData> listTime(String sql, Object[] keys);
}
