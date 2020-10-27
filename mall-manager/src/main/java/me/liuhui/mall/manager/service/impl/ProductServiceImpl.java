
package me.liuhui.mall.manager.service.impl;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.runtime.AdminSessionHolder;
import me.liuhui.mall.manager.service.ProductService;
import me.liuhui.mall.manager.service.dto.product.CreateProductDTO;
import me.liuhui.mall.manager.service.dto.product.ListProductDTO;
import me.liuhui.mall.manager.service.dto.product.ModifyProductDTO;
import me.liuhui.mall.manager.service.mapstruct.ProductConverter;
import me.liuhui.mall.manager.service.vo.product.ListProductVO;
import me.liuhui.mall.manager.service.vo.product.ProductVO;
import me.liuhui.mall.repository.dao.ProductDao;
import me.liuhui.mall.repository.dao.ProductDetailDao;
import me.liuhui.mall.repository.model.Product;
import me.liuhui.mall.repository.model.ProductDetail;
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
    @Resource
    private ProductDetailDao productDetailDao;

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
    public ResultVO<ProductVO> detail(Long id) {
        Product product = productDao.selectByPk(id);
        if (product == null) {
            return ResultVO.buildFailResult("产品不存在");
        }
        ProductVO productVO = productConverter.toVo(product);
        ProductDetail productDetail = productDetailDao.selectByProductId(id);
        if (productDetail != null) {
            productVO.setDetail(productDetail.getDetail());
        }
        return ResultVO.buildSuccessResult(productVO);
    }

    @Override
    public ResultVO<Boolean> publish(Long id) {
        Product product = productDao.selectByPk(id);
        if (product == null) {
            return ResultVO.buildFailResult("产品不存在");
        }
        if (ProductStatus.SELLING.getCode().equals(product.getStatus())) {
            return ResultVO.buildFailResult("产品是上架状态！");
        }
        if (product.getStock() <= 0) {
            return ResultVO.buildFailResult("库存不能为0！");
        }
        product.setStatus(ProductStatus.SELLING.getCode());
        productDao.update(product, "status");
        return ResultVO.buildSuccessResult();
    }


    @Override
    public ResultVO<Boolean> suspend(Long id) {
        Product product = productDao.selectByPk(id);
        if (product == null) {
            return ResultVO.buildFailResult("产品不存在");
        }
        if (ProductStatus.SUSPEND.getCode().equals(product.getStatus())) {
            return ResultVO.buildFailResult("产品是下架状态！");
        }
        product.setStatus(ProductStatus.SUSPEND.getCode());
        productDao.update(product, "status");
        return ResultVO.buildSuccessResult();
    }

    @Override
    public ResultVO<Boolean> create(CreateProductDTO dto) {
        Product entity = productConverter.createDtoToEntity(dto);
        entity.setMainPic(entity.getPicFilenames().split(",")[0]);
        String allCategoryIds = dto.getAllCategoryIds();
        String[] split = allCategoryIds.split(",");
        String categoryId = split[split.length - 1];
        entity.setCategoryId(Long.parseLong(categoryId));
        entity.setCreateTime(new Date());
        entity.setStatus(ProductStatus.SUSPEND.getCode());
        entity.setCreateAdmin(AdminSessionHolder.getCurrentAdmin().getUsername());
        productDao.insert(entity);
        ProductDetail productDetail = new ProductDetail();
        productDetail.setProductId(entity.getId());
        productDetail.setDetail(dto.getDetail());
        productDetailDao.insert(productDetail);
        return ResultVO.buildSuccessResult();
    }

    @Override
    public ResultVO<Boolean> modify(ModifyProductDTO dto) {
        Product product = productDao.selectByPk(dto.getId());
        if (product == null) {
            return ResultVO.buildFailResult("产品不存在");
        }
        if (!ProductStatus.SUSPEND.getCode().equals(product.getStatus())) {
            return ResultVO.buildFailResult("请先下架产品！");
        }
        Product entity = productConverter.modifyDtoToEntity(dto);
        entity.setMainPic(entity.getPicFilenames().split(",")[0]);
        String allCategoryIds = dto.getAllCategoryIds();
        String[] split = allCategoryIds.split(",");
        String categoryId = split[split.length - 1];
        entity.setCategoryId(Long.parseLong(categoryId));
        productDao.update(entity);
        ProductDetail productDetail = productDetailDao.selectByProductId(dto.getId());
        if (productDetail == null) {
            productDetail = new ProductDetail();
            productDetail.setProductId(product.getId());
            productDetail.setDetail(dto.getDetail());
            productDetailDao.insert(productDetail);
        } else {
            productDetail.setDetail(dto.getDetail());
            productDetailDao.update(productDetail);
        }
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
