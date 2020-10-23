package me.liuhui.mall.repository.dao;
import me.liuhui.mall.repository.dao.mybatis.provider.BaseDao;
import me.liuhui.mall.repository.model.Order;
import me.liuhui.mall.repository.model.annotation.MapperMapping;


@MapperMapping(table = "o_order")
public interface OrderDao extends BaseDao<Order,Long> {
	Order selectByNo(String v) ;
	
}
