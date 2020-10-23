package me.liuhui.mall.repository.dao;
import me.liuhui.mall.repository.dao.mybatis.provider.BaseDao;
import me.liuhui.mall.repository.model.SessionToken;
import me.liuhui.mall.repository.model.annotation.MapperMapping;


@MapperMapping(table = "u_session_token")
public interface SessionTokenDao extends BaseDao<SessionToken,Long> {
	SessionToken selectBySessionToken(String v) ;
	
}
