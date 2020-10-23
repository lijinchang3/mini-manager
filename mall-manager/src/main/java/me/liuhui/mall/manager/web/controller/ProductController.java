package me.liuhui.mall.manager.web.controller;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.ProductService;
import me.liuhui.mall.manager.service.vo.product.ListProductVO;
import me.liuhui.mall.manager.web.annotation.PerCode;
import me.liuhui.mall.manager.service.dto.product.CreateProductDTO;
import me.liuhui.mall.manager.service.dto.product.ListProductDTO;
import me.liuhui.mall.manager.service.dto.product.ModifyProductDTO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Set;

@Validated
@RestController
@RequestMapping("/api/product")
public class ProductController {

    @Resource
    private ProductService productService;

    @PerCode("product:mgt")
    @GetMapping("list")
    public ResultVO<ListProductVO> list(ListProductDTO dto) {
        return productService.list(dto);
    }

    @PerCode("product:add")
    @PostMapping("create")
    public ResultVO<Boolean> create(@Validated @RequestBody CreateProductDTO dto) {
        return productService.create(dto);
    }

    @PerCode("product:update")
    @PostMapping("modify")
    public ResultVO<Boolean> modify(@Validated @RequestBody ModifyProductDTO dto) {
        return productService.modify(dto);
    }

    @PerCode("product:del")
    @DeleteMapping("delete")
    public ResultVO<Boolean> delete(@RequestBody @Validated @NotNull @Size(min = 1) Set<Long> ids) {
        return productService.delete(ids);
    }


}
