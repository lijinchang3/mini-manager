package me.liuhui.mall.manager.service.dto.product;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Data
public class ListProductDTO extends PageDto {


    private Integer id;

    private String name;

    private String picFilenames;

    private Double price;

    private Double originalPrice;

    private Double costPrice;

    private String detail;

    private Date minCreateTime;
    private Date maxCreateTime;

    private String createAdmin;

    private Integer status;

    private Integer categoryId;

    private Integer stock;

    private Integer salesNum;

    private Integer virtualSalesNum;

    private Integer evaluationNum;

    private Double evaluationScore;

    private String properties;

    private String note;


}
