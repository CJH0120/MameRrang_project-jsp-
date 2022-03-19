package com.mommy.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.admin.vo.AdminQnaVO;
import com.mommy.app.admin.vo.AdminVO;
import com.mommy.app.user.vo.UserVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class AdminDAO
{
	  SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	  SqlSession sqlSession;
	  
	  public AdminDAO()
	  {
		    sqlSession = sqlSessionFactory.openSession(true);
	  }
	//----------문의 신고 페이지-------------------------------------------------------	

		//게시글 전체(문의+신고) 목록
		public List<AdminQnaVO> selectAll(Map<String, Integer> qnareMap) {
			return sqlSession.selectList("Admin.selectAll", qnareMap);
		}
		
		//게시글 정보 조회
		public AdminQnaVO selectDetail(int askNum) {
			return sqlSession.selectOne("Admin.selectDetail", askNum);
		}
		
		//최근 게시글 번호
		public int getSeq() {
			return sqlSession.selectOne("Admin.getSeq");
		}
		
		//Qna글 전체 개수
		public int getQnaTotal() {
			return sqlSession.selectOne("Admin.getQnaTotal");
		}
		
		//문의 처리중 게시글 전체 개수 (처리중0 처리완료1)
		public int getQnaTotal0() {
			return sqlSession.selectOne("Admin.getQnaTotal0");
		}
		
		//문의 처리완료 게시글 천제 개수(처리중0 처리완료1)
		public int getQnaTotal1() {
			return sqlSession.selectOne("Admin.getQnaTotal1");
		}
		
		//답변 달기
		public void update(AdminQnaVO admin) {
			sqlSession.update("Admin.update", admin);
		}

	//----------------------------------------------------------------------	  
	  
}
