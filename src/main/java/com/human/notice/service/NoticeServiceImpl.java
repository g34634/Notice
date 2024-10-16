package com.human.notice.service;

import com.human.notice.repository.NoticeDAO;
import com.human.notice.vo.NoticeVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    private final NoticeDAO noticeDAO;

    // Lombok의 @AllArgsConstructor 대신 생성자 작성
    public NoticeServiceImpl(NoticeDAO noticeDAO) {
        this.noticeDAO = noticeDAO;
    }

    @Override
    public List<NoticeVO> getNotices() {
        return noticeDAO.getNoticeList();
    }

    @Override
    public void addNotice(NoticeVO notice) {
        noticeDAO.insertNotice(notice);
    }
}
