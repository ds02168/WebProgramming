package web2021.study11;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class InitialMember implements ServletContextListener{
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context = sce.getServletContext();
		ArrayList<Member> mlist = new ArrayList<Member>();
		
		for(int i=0;i<8;i++) {
			Member data = new Member("홍길동"+i,"test"+i+"@test.net");
			mlist.add(data);
		}
		
		mlist.add(new Member("김철수",null));
		mlist.add(new Member("이영희",null));
		
		context.setAttribute("members", mlist);
		context.setAttribute("member", new Member());
	}

	public void contextDestoryed(ServletContextEvent sce) {}
}
