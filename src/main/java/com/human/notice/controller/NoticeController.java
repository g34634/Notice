package com.human.notice.controller;

import com.human.notice.service.NoticeService;
import com.human.notice.vo.NoticeVO;
import com.human.notice.vo.SearchVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/")  // 루트 경로로 모든 요청 처리
public class NoticeController {

    private final NoticeService noticeService;

    public NoticeController(NoticeService noticeService) {
        this.noticeService = noticeService;
    }

    // 루트 경로로 들어올 때 공지사항 목록으로 리다이렉션
    @GetMapping("/") 
    public String redirectToNoticeList() {
        return "redirect:/list";  // 절대 경로로 리다이렉션
    }

    // 공지사항 목록을 보여주는 GET 요청
    @GetMapping("/list")
    public String noticeList(Model model,
                             @RequestParam(value = "category", required = false) String category,
                             @RequestParam(value = "searchType", required = false) String searchType,
                             @RequestParam(value = "keyword", required = false) String keyword) {
        // 검색 파라미터를 객체로 전달
        SearchVO searchVO = new SearchVO();
        searchVO.setCategory(category);
        searchVO.setSearchType(searchType);
        searchVO.setKeyword(keyword);

        // 검색된 결과를 가져옴
        List<NoticeVO> notices = noticeService.searchNotices(searchVO);
        model.addAttribute("notices", notices);
        return "notice/notice_list";  // notice_list.jsp로 포워딩
    }

    // 공지사항 작성 페이지로 이동하는 GET 요청
    @GetMapping("/write")
    public String writeForm() {
        return "notice/notice_write";  // notice_write.jsp로 포워딩
    }

    // 공지사항을 등록하는 POST 요청
    @PostMapping("/write")
    public String writeNotice(NoticeVO notice) {
        noticeService.addNotice(notice);  // 공지사항 등록
        return "redirect:/list";  // 등록 후 목록 페이지로 리다이렉션
    }
}
