package me.liuhui.mall.manager.web.controller;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.manager.service.UserService;
import me.liuhui.mall.manager.web.annotation.PerCode;
import me.liuhui.mall.manager.service.dto.user.ListUserDTO;
import me.liuhui.mall.manager.service.dto.user.ModifyUserDTO;
import me.liuhui.mall.manager.service.vo.user.ListUserVO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Set;

@Validated
@RestController
@RequestMapping("/api/user")
public class UserController {

	@Resource
	private UserService userService;

	@PerCode("user:mgt")
	@GetMapping("list")
	public ResultVO<ListUserVO> list(ListUserDTO dto) {
		return userService.list(dto);
	}

	@PerCode("user:update")
	@PostMapping("modify")
	public ResultVO<Boolean> modify(@Validated @RequestBody ModifyUserDTO dto) {
		return userService.modify(dto);
	}

	@PerCode("user:del")
	@DeleteMapping("delete")
	public ResultVO<Boolean> delete(@RequestBody @Validated @NotNull @Size(min = 1) Set<Long> ids) {
		return userService.delete(ids);
	}


}
