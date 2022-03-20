package com.mommy.app.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class AdminCheckOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			
			HashMap<String, String> findIdPw = new HashMap<>();
		      UserDAO userDao = new UserDAO();
		      ActionForward af = new ActionForward();
		      HttpSession session = req.getSession();
		      PrintWriter out = resp.getWriter();
		      JSONObject obj = new JSONObject();
	
		      
		      
		      findIdPw.put("one", req.getParameter("one"));	      
		      findIdPw.put("two", req.getParameter("two"));
		      findIdPw.put("three", req.getParameter("three"));
		      findIdPw.put("four", req.getParameter("four"));
		      findIdPw.put("five", req.getParameter("five"));
		      findIdPw.put("name", req.getParameter("name"));
		      
//		      int askNum = Integer.parseInt(req.getParameter("one"));
//		      int askNum1 = Integer.parseInt(req.getParameter("two"));
//		      int askNum2 = Integer.parseInt(req.getParameter("three"));
//		      int askNum3 = Integer.parseInt(req.getParameter("four"));
//		      int askNum4 = Integer.parseInt(req.getParameter("five"));
		      
		      
		      
		      
		
		System.out.println(findIdPw);
		
	
		
		
		 
		return null;
	}

}
