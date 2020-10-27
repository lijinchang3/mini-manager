package me.liuhui.mall.manager.service.dto.ad.space;

import lombok.Data;
import lombok.EqualsAndHashCode;
import me.liuhui.mall.common.base.dto.PageDto;

@EqualsAndHashCode(callSuper = true)
@Data
public class ListAdSpaceDTO extends PageDto {


    private Integer id;

    private String name;

    private String no;

    private String template;

    private Integer number;

    private Integer type;

    private Integer width;

    private Integer height;


}
