package demo02;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.HttpRequestHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import entity.Items;

public class ItemsController2 implements HttpRequestHandler{

	@Override
	public void handleRequest(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
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
		
		req.setAttribute("items", items);
		String pageIndex = (String) req.getParameter("pageIndex") != null? (String) req.getParameter("pageIndex") : "0";
		String pageCount = (String) req.getParameter("pageCount") != null? (String) req.getParameter("pageCount") : items.size()+"";
		req.getRequestDispatcher("/pages/itemsList2.jsp?pageIndex="+pageIndex+"&pageCount="+pageCount).forward(req, res);
	}
}
