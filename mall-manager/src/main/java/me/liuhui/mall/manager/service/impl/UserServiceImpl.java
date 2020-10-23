
package me.liuhui.mall.manager.service.impl;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.UserService;
import me.liuhui.mall.manager.service.dto.user.ListUserDTO;
import me.liuhui.mall.manager.service.dto.user.ModifyUserDTO;
import me.liuhui.mall.repository.dao.UserDao;
import me.liuhui.mall.manager.service.mapstruct.UserConverter;
import me.liuhui.mall.manager.service.vo.user.ListUserVO;
import me.liuhui.mall.repository.model.User;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created on 2020/10/14 20:12
 * <p>
 * Description: [TODO]
 * <p>
 *
 * @author [清远]
 */
@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserConverter userConverter;
	@Resource
	private UserDao userDao;

	@Override
	public ResultVO<ListUserVO> list(ListUserDTO dto) {
		if (StringUtils.isBlank(dto.getOrderBy())) {
			dto.setOrderBy("id desc");
		}
		Map<String, Object> cond = dto.toMap();
		long count = userDao.count(cond);
		List<User> users = userDao.selectList(cond);
		ListUserVO vo = new ListUserVO();
		vo.setTotal(count);
		vo.setList(userConverter.toVo(users));
		return ResultVO.buildSuccessResult(vo);
	}


	@Override
	public ResultVO<Boolean> modify(ModifyUserDTO dto) {
		User user = userDao.selectByPk(dto.getId());
		if (user == null) {
			return ResultVO.buildFailResult("角色不存在");
		}


		User entity = userConverter.modifyDtoToEntity(dto);
		userDao.update(entity);
		return ResultVO.buildSuccessResult();
	}

	@Override
	public ResultVO<Boolean> delete(Set<Long> ids) {
		for (Long id : ids) {
			userDao.delete(id);
		}
		return ResultVO.buildSuccessResult();
	}

}
