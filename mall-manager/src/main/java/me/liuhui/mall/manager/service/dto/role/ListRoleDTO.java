package me.liuhui.mall.manager.service.dto.role;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * @author 清远
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class ListRoleDTO extends PageDto {


    private Integer id;

    private String name;

    private String description;


    private Date minCreateTime;
    private Date maxCreateTime;




}
