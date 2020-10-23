package me.liuhui.mall.manager.service;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.dto.admin.AdminDTO;
import me.liuhui.mall.manager.service.dto.admin.ChangeStatusDTO;
import me.liuhui.mall.manager.service.dto.admin.ListAdminDTO;
import me.liuhui.mall.manager.service.dto.admin.ModifyMyPasswordDTO;
import me.liuhui.mall.manager.service.vo.admin.AdminInitVO;
import me.liuhui.mall.manager.service.vo.admin.AdminVO;
import me.liuhui.mall.manager.service.vo.admin.ListAdminVO;

import java.util.Set;


public interface AdminService {

    /**
     * 初始化首页
     *
     * @return
     */
    ResultVO<AdminInitVO> init();

    ResultVO<AdminVO> myInfo();

    ResultVO<Boolean> modifyMyInfo(AdminDTO dto);

    ResultVO<Boolean> modifyMyPassword(ModifyMyPasswordDTO dto);

    ResultVO<Boolean> create(AdminDTO dto);

    ResultVO<Boolean> modify(AdminDTO dto);

    ResultVO<Boolean> delete(Set<Long> ids);

    ResultVO<ListAdminVO> list(ListAdminDTO dto);

    ResultVO<Boolean> changeStatus(ChangeStatusDTO dto);
}
