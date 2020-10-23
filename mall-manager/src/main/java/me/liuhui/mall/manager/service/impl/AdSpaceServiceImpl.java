
package me.liuhui.mall.manager.service.impl;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.dto.ad.space.CreateAdSpaceDTO;
import me.liuhui.mall.manager.service.dto.ad.space.ListAdSpaceDTO;
import me.liuhui.mall.manager.service.vo.ad.space.ListAdSpaceVO;
import me.liuhui.mall.repository.dao.AdSpaceDao;
import me.liuhui.mall.manager.service.AdSpaceService;
import me.liuhui.mall.manager.service.dto.ad.space.ModifyAdSpaceDTO;
import me.liuhui.mall.manager.service.mapstruct.AdSpaceConverter;
import me.liuhui.mall.repository.model.AdSpace;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
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
public class AdSpaceServiceImpl implements AdSpaceService {
    @Resource
    private AdSpaceConverter adSpaceConverter;
    @Resource
    private AdSpaceDao adSpaceDao;

    @Override
    public ResultVO<ListAdSpaceVO> list(ListAdSpaceDTO dto) {
        if (StringUtils.isBlank(dto.getOrderBy())) {
            dto.setOrderBy("id desc");
        }
        Map<String, Object> cond = dto.toMap();
        long count = adSpaceDao.count(cond);
        List<AdSpace> adSpaces = adSpaceDao.selectList(cond);
        ListAdSpaceVO vo = new ListAdSpaceVO();
        vo.setTotal(count);
        vo.setList(adSpaceConverter.toVo(adSpaces));
        return ResultVO.buildSuccessResult(vo);
    }

    @Override
    public ResultVO<Boolean> create(CreateAdSpaceDTO dto) {
        AdSpace entity = adSpaceConverter.createDtoToEntity(dto);
        entity.setCreateTime(new Date());
        adSpaceDao.insert(entity);
        return ResultVO.buildSuccessResult();
    }

    @Override
    public ResultVO<Boolean> modify(ModifyAdSpaceDTO dto) {
        AdSpace adSpace = adSpaceDao.selectByPk(dto.getId());
        if (adSpace == null) {
            return ResultVO.buildFailResult("角色不存在");
        }


        AdSpace entity = adSpaceConverter.modifyDtoToEntity(dto);
        adSpaceDao.update(entity);
        return ResultVO.buildSuccessResult();
    }

    @Override
    public ResultVO<Boolean> delete(Set<Long> ids) {
        for (Long id : ids) {
            adSpaceDao.delete(id);
        }
        return ResultVO.buildSuccessResult();
    }

}
