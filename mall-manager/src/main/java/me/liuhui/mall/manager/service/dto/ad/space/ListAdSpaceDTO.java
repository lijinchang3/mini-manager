package me.liuhui.mall.manager.service.dto.ad.space;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class ListAdSpaceDTO extends PageDto {


    private Integer id;

    private String name;

    private String no;

    private String templateName;

    private Integer number;

    private Integer type;

    private Integer picWidth;

    private Integer picHeight;


}
