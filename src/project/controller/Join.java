package project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.service.Service;
import project.vo.ProjectVO;

public class Join implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		String addr1= request.getParameter("postAddr1");
		String addr2= request.getParameter("postAddr2");
		String addr3= request.getParameter("postAddr3");
		String addr = addr1+" "+addr2+" "+addr3;
		
		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthdate = request.getParameter("birthdate");
		String birth = birthyear+"-"+birthmonth+"-"+birthdate;
		
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		
		ProjectVO project = new ProjectVO();
		project.setId(id);
		project.setPwd(pwd);
		project.setName(name);
		project.setAddr(addr);
		System.out.print(addr);
		project.setBirth(birth);
		System.out.print(birth);
		project.setGender(gender);
		project.setphone(phone);
		
		Service s = Service.getInstance();
		s.join(project);
		
		HttpUtil.forward(request, response, "Login.jsp");
	}
}
