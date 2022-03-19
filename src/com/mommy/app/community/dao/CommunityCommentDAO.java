package com.mommy.app.community.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.mommy.mybatis.config.MyBatisConfig;

public class CommunityCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	/*
	public CommunityReplyDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//댓글 목록
		public List<BoardReplyDTO> selectReplies(int boardNumber) {
			return sqlSession.selectList("Board.selectReplies", boardNumber);
		}
		
		//댓글 등록
		public void insertReply(BoardReplyVO reply) {
			sqlSession.insert("Board.insertReply", reply);
		}
		
		//댓글 삭제
		public void deleteReply(int replyNumber) {
			sqlSession.delete("Board.deleteReply", replyNumber);
		}
		
		//댓글 수정
		public void updateReply(BoardReplyVO reply) {
			sqlSession.update("Board.updateReply", reply);
		}
*/
}
