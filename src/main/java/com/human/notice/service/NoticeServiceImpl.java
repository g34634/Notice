package com.human.notice.service;

import com.human.notice.repository.NoticeDAO;
import com.human.notice.vo.NoticeVO;
import com.human.notice.vo.SearchVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    private final NoticeDAO noticeDAO;

    public NoticeServiceImpl(NoticeDAO noticeDAO) {
        this.noticeDAO = noticeDAO;
    }

    @Override
    public List<NoticeVO> getNotices() {
        return noticeDAO.getNotices();
    }

    @Override
    public void addNotice(NoticeVO notice) {
        noticeDAO.insertNotice(notice);
    }

    @Override
    public List<NoticeVO> searchNotices(SearchVO search) {
        return noticeDAO.searchNotices(search);
    }
}
