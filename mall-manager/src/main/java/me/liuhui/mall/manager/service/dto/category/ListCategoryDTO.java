package me.liuhui.mall.manager.service.dto.category;

import lombok.Data;
import me.liuhui.mall.common.base.dto.PageDTO;

import java.util.Date;

@Data
public class ListCategoryDTO extends PageDTO {


    private Integer id;

    private Integer pid;

    private String name;

    private String description;

    private Double weight;

    private Integer status;

    private Date minCreateTime;
    private Date maxCreateTime;

    private String createAdmin;


}
