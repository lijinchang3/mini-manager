package me.liuhui.mall.manager.service.dto.permission;

import lombok.Data;
import me.liuhui.mall.common.base.dto.PageDTO;

import java.util.Date;

@Data
public class ListPermissionDTO extends PageDTO {


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
