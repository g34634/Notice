package com.human.notice.repository;

import com.human.notice.vo.NoticeVO;
import java.util.List;

public interface NoticeDAO {
    List<NoticeVO> getNoticeList();
    void insertNotice(NoticeVO notice);
}
