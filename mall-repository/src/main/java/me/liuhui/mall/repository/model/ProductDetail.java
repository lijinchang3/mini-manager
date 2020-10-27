package me.liuhui.mall.repository.model;

import lombok.Data;
import me.liuhui.mall.repository.model.annotation.Pk;

@Data
public class ProductDetail {
    @Pk
    private Long id;
    private Long productId;
    private String detail;

}
