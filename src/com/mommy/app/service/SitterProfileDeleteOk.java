package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;

public class SitterProfileDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("확인:" + req.getParameter("userNum"));
		System.out.println("확인:" + req.getParameter("profile"));
		int ProfileNum = Integer.parseInt(req.getParameter("profile"));
		int userNum = Integer.parseInt(req.getParameter("userNum"));
		System.out.println("들어옴2");
		
		ServiceDAO serdao  = new ServiceDAO();
		ProfileFilesDAO prodao = new ProfileFilesDAO();
		ActionForward af = new ActionForward();
		
		serdao.delete(userNum);
		prodao.delete(ProfileNum);
		
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/service/SearchMomOk.ser");
		return af;
	}
	
}
