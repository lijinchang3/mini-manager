package me.liuhui.mall.repository.model;



import lombok.Data;


import me.liuhui.mall.repository.model.annotation.Pk;

/**
 * 
 */

@Data
public class RolePermission  {




    /**
     * id       db_column: id
     */

    @Pk
	private Long id;

    /**
     * roleId       db_column: role_id
     */

private Long roleId;

    /**
     * permissionId       db_column: permission_id
     */

private Long permissionId;







}






