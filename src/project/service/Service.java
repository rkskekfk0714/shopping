package project.service;

import project.Dao.ProjectDao;
import project.vo.ProjectVO;

public class Service {
	private static Service service = new Service();
	private Service() {}
	private ProjectDao dao = ProjectDao.getInstance();
	
	public static Service getInstance()
	{
		return service;
	}
	
	public void join(ProjectVO project) {
		// TODO Auto-generated method stub
		dao.join(project);
	}
	
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		System.out.print("service login :" + pwd);
		return dao.login(id, pwd);
	}
}
