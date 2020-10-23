package me.liuhui.mall.manager.service.dto.logistic;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;

@Data
public class ListLogisticDTO extends PageDto {


    private Integer id;

    private String name;

    private String code;

    private String companyUrl;

    private Double weight;


}
