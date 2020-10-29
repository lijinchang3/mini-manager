package me.liuhui.mall.manager.web.controller;


import lombok.extern.slf4j.Slf4j;
import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.common.service.FileService;
import me.liuhui.mall.common.service.dto.UploadFileDTO;
import me.liuhui.mall.common.service.vo.FileVO;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;

/**
 * Created on 2020/10/21 16:27
 * <p>
 * Description: [TODO]
 * <p>
 * Company: []
 *
 * @author [清远]
 */
@Slf4j
@RequestMapping("/api/file")
@RestController
public class FileController {

    @Resource
    private FileService fileService;

    @PostMapping("/upload")
    public ResultVO<FileVO> devUpload(@RequestParam MultipartFile file) throws IOException {
        UploadFileDTO dto = new UploadFileDTO();
        dto.setFilename(file.getOriginalFilename());
        dto.setInputStream(file.getInputStream());
        return fileService.uploadTemp(dto);
    }


}
