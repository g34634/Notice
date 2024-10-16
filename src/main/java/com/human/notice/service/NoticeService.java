package com.human.notice.service;

import java.util.List;
import com.human.notice.vo.NoticeVO;

public interface NoticeService {
    List<NoticeVO> getNotices();
    void addNotice(NoticeVO notice);
}
