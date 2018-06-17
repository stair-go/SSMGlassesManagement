package controller;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.Module;

import pojo.Admin;
import service.CustomerService;


@Controller
@RequestMapping("/Login")
public class LoginController {

	@Autowired
	private CustomerService customerService;
	/**
	 * 登录,并存到session中
	 * @param admin
	 * @param session
	 * @return
	 */
	@RequestMapping("/adminlogin")
	public String login(Admin admin,HttpSession session){
		Admin adm=customerService.findNamePas(admin);
		if(adm!=null){
			session.setAttribute("user", adm);
			if(adm.getUsername().equals("admin")){
				session.setAttribute("mss","管理员");
			}
			return "main";
		}
		
		return "index";
	}
	
	/**
	 * 修改个人信息初始化,将已有信息打印
	 * @param admin
	 * @param session
	 * @return
	 */
	@RequestMapping("/initedit")
	public String initEdit(Model mod,HttpSession session){
		
		mod.addAttribute("user", (Admin)session.getAttribute("user"));
		return "jsp/admin/edit";
	}
	
	/**
	 * 修改个人信息
	 * @param admin
	 * @param session
	 * @return
	 */
	@RequestMapping("/edit")
	public String Edit(Admin admin,Model mod,HttpSession session){
		Admin adm=customerService.updateAdmin(admin);
		session.setAttribute("user", adm);
		return "jsp/success";
	}
	/**
	 * 注册
	 * @param admin
	 * @param session
	 * @return
	 */
	@RequestMapping("/sign")
	public String sign(Admin admin,HttpSession session){
		customerService.saveAdmin(admin);
		
		return login(admin,session);
	}
	
	
}
