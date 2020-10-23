package me.liuhui.mall.manager.service.dto.category;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;

import java.util.Date;

@Data
public class ListCategoryDTO extends PageDto {


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
