package com.human.notice.controller;

import com.human.notice.service.NoticeService;
import com.human.notice.vo.NoticeVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/notice")
public class NoticeController {

    private final NoticeService noticeServiceImpl;

    // Lombok의 @AllArgsConstructor 대신 생성자 작성
    public NoticeController(NoticeService noticeServiceImpl) {
        this.noticeServiceImpl = noticeServiceImpl;
    }

    @GetMapping({"", "/"})
    public String redirectToNoticeList() {
        return "redirect:/notice/list";
    }

    @GetMapping("/list")
    public String noticeList(Model model) {
        List<NoticeVO> notices = noticeServiceImpl.getNotices();
        model.addAttribute("notices", notices);
        return "notice/notice_list";
    }

    @GetMapping("/write")
    public String writeForm() {
        return "notice/notice_write";
    }

    @PostMapping("/write")
    public String writeNotice(NoticeVO notice) {
        noticeServiceImpl.addNotice(notice);
        return "redirect:/notice/list";
    }
}
