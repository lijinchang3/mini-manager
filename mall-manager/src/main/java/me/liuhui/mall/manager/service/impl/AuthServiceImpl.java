package me.liuhui.mall.manager.service.impl;

import me.liuhui.mall.common.base.enums.VoCodeEnum;
import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.dto.auth.LoginDTO;
import me.liuhui.mall.repository.dao.AdminDao;
import me.liuhui.mall.manager.service.AuthService;
import me.liuhui.mall.manager.service.vo.auth.AuthVO;
import me.liuhui.mall.repository.model.Admin;
import me.liuhui.mall.repository.model.enums.AdminStatus;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Objects;

/**
 * Created on 2020/10/23 11:23
 * <p>
 * Description: [TODO]
 * <p>
 * Company: []
 *
 * @author [清远]
 */
@Service
public class AuthServiceImpl implements AuthService {

    @Resource
    private AdminDao adminDao;

    @Override
    public ResultVO<AuthVO> login(LoginDTO dto) {
        Admin admin = adminDao.selectByUsername(dto.getUsername());
        if (admin == null || !Objects.equals(admin.getPassword(), DigestUtils.md5DigestAsHex(dto.getPassword().getBytes()))) {
            return ResultVO.buildResult(VoCodeEnum.PASSWORD_ERROR);
        }
        if (AdminStatus.FROZEN.getCode().equals(admin.getStatus())) {
            return ResultVO.buildResult(VoCodeEnum.USER_STATUS_ERROR);
        }
        admin.setLastLoginTime(new Date());
        adminDao.update(admin, "lastLoginTime");
        AuthVO vo = new AuthVO();
        vo.setAdminId(admin.getId());
        vo.setRealName(admin.getRealName());
        vo.setUsername(admin.getUsername());
        return ResultVO.buildSuccessResult(vo);
    }
}
