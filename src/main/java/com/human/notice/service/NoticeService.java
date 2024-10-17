package com.human.notice.service;

import com.human.notice.vo.NoticeVO;
import com.human.notice.vo.SearchVO;

import java.util.List;

public interface NoticeService {
    List<NoticeVO> getNotices();
    void addNotice(NoticeVO notice);
    List<NoticeVO> searchNotices(SearchVO search);
}
