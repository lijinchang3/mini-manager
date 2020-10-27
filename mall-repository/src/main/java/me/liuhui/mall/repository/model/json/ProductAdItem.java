package me.liuhui.mall.repository.model.json;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import me.liuhui.mall.repository.model.Product;

/**
 * @author liuhui
 * @version 1.0
 * @date 2013-5-6 下午10:34:55
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProductAdItem {
    private Product product;
}
