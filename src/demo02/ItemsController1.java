package demo02;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import entity.Items;

public class ItemsController1 implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		List<Items> items = new ArrayList<Items>();
		Items item1 = new Items();
		item1.setId(1);
		item1.setName("frank");
		item1.setPic("sky");
		item1.setPrice(5000f);
		item1.setDetail("detail");
		item1.setCreatetime(new Date());
		
		Items item2 = new Items();
		item2.setId(2);
		item2.setName("tom");
		item2.setPic("sea");
		item2.setPrice(6000f);
		item2.setDetail("detail+1");
		item2.setCreatetime(new Date());
		
		items.add(item1);
		items.add(item2);
		
		req.setAttribute("123", "123");
		
		String pageIndex = (String) req.getParameter("pageIndex") != null? (String) req.getParameter("pageIndex") : "0";
		String pageCount = (String) req.getParameter("pageCount") != null? (String) req.getParameter("pageCount") : items.size()+"";
//		String pageIndex = (String) req.getAttribute("pageIndex") != null? (String)  req.getAttribute("pageIndex") : "0";
//		String pageCount = (String) req.getAttribute("pageCount") != null? (String)  req.getAttribute("pageCount") : items.size()+"";
		ModelAndView maView = new ModelAndView("/pages/itemsList.jsp?pageIndex="+pageIndex+"&pageCount="+pageCount);
		
		maView.addObject("items", items);
		
		return maView;
	}

}
