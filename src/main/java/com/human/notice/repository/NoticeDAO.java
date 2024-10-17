package com.human.notice.repository;

import com.human.notice.vo.NoticeVO;
import com.human.notice.vo.SearchVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoticeDAO {

    private final SqlSession sqlSession;

    public NoticeDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    private static final String MAPPER = "com.human.notice.repository.NoticeDAO";

    public List<NoticeVO> searchNotices(SearchVO search) {
        return sqlSession.selectList(MAPPER + ".searchNotices", search);
    }

    public void insertNotice(NoticeVO notice) {
        sqlSession.insert(MAPPER + ".insertNotice", notice);
    }

    public List<NoticeVO> getNotices() {
        return sqlSession.selectList(MAPPER + ".getNotices");
    }
}
