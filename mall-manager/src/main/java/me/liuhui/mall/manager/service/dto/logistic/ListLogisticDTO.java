package me.liuhui.mall.manager.service.dto.logistic;

import lombok.Data;
import me.liuhui.mall.common.base.dto.PageDTO;

@Data
public class ListLogisticDTO extends PageDTO {


    private Integer id;

    private String name;

    private String code;

    private String companyUrl;

    private Double weight;


}
