package me.liuhui.mall.manager.service.dto.permission;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;

import java.util.Date;

@Data
public class ListPermissionDTO extends PageDto {


    private Integer id;

    private Integer pid;

    private String title;

    private String code;

    private String icon;

    private Integer type;

    private String href;

    private Boolean status;

    private Date minCreateTime;
    private Date maxCreateTime;

    private Double weight;


}
