
package me.liuhui.mall.manager.service.impl;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.ProductService;
import me.liuhui.mall.manager.service.dto.product.CreateProductDTO;
import me.liuhui.mall.manager.service.dto.product.ListProductDTO;
import me.liuhui.mall.manager.service.dto.product.ModifyProductDTO;
import me.liuhui.mall.manager.service.vo.product.ListProductVO;
import me.liuhui.mall.repository.dao.ProductDao;
import me.liuhui.mall.manager.runtime.AdminSessionHolder;
import me.liuhui.mall.manager.service.mapstruct.ProductConverter;
import me.liuhui.mall.repository.model.Product;
import me.liuhui.mall.repository.model.enums.ProductStatus;
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
public class ProductServiceImpl implements ProductService {
	@Resource
	private ProductConverter productConverter;
	@Resource
	private ProductDao productDao;

	@Override
	public ResultVO<ListProductVO> list(ListProductDTO dto) {
		if (StringUtils.isBlank(dto.getOrderBy())) {
			dto.setOrderBy("id desc");
		}
		Map<String, Object> cond = dto.toMap();
		long count = productDao.count(cond);
		List<Product> products = productDao.selectList(cond);
		ListProductVO vo = new ListProductVO();
		vo.setTotal(count);
		vo.setList(productConverter.toVo(products));
		return ResultVO.buildSuccessResult(vo);
	}

	@Override
	public ResultVO<Boolean> create(CreateProductDTO dto) {
		Product entity = productConverter.createDtoToEntity(dto);
		String allCategoryIds = dto.getAllCategoryIds();
		String[] split = allCategoryIds.split(",");
		String categoryId = split[split.length - 1];
		entity.setCategoryId(Long.parseLong(categoryId));
		entity.setCreateTime(new Date());
		entity.setStatus(ProductStatus.SUSPEND.getCode());
		entity.setCreateAdmin(AdminSessionHolder.getCurrentAdmin().getUsername());
		productDao.insert(entity);
		return ResultVO.buildSuccessResult();
	}

	@Override
	public ResultVO<Boolean> modify(ModifyProductDTO dto) {
		Product product = productDao.selectByPk(dto.getId());
		if (product == null) {
			return ResultVO.buildFailResult("角色不存在");
		}


		Product entity = productConverter.modifyDtoToEntity(dto);
		productDao.update(entity);
		return ResultVO.buildSuccessResult();
	}

	@Override
	public ResultVO<Boolean> delete(Set<Long> ids) {
		for (Long id : ids) {
			productDao.delete(id);
		}
		return ResultVO.buildSuccessResult();
	}

}
