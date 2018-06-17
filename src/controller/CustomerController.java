package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Admin;
import pojo.Customer;
import pojo.PageShow;
import pojo.QueryVo;
import pojo.SelectByDate;
import service.CustomerService;
@RequestMapping("/customer")
@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;

	/**
	 * 添加一个会员
	 * @param queryVo
	 * @return
	 */
	@RequestMapping("/add")
	public String add(QueryVo queryVo,Model mod){
		customerService.addCustomerbyAdmin(queryVo);
		mod.addAttribute("customer", queryVo);
		return "jsp/customer/see2";
	}
	
	/**
	 * 会员列表
	 */
	@RequestMapping("/list/{pageNow}")
	public String list(@PathVariable("pageNow")int pageNow,HttpSession session,Model mod){
		Long adm_id=((Admin)session.getAttribute("user")).getAdmin_id();
		int listsize=customerService.findCustomerSize(adm_id);
		PageShow page=new PageShow (adm_id,listsize,pageNow);
		List<Customer> list=customerService.findAllCustomer(page);
		mod.addAttribute("list", list);
		mod.addAttribute("page", page);
		return "jsp/customer/list";
	}
	
	
	
	
	/**
	 * 会员列表,带删除功能
	 */
	@RequestMapping("/list2/{pageNow}")
	public String list2(@PathVariable("pageNow")int pageNow,HttpSession session,Model mod){
		Long adm_id=((Admin)session.getAttribute("user")).getAdmin_id();
		int listsize=customerService.findCustomerSize(adm_id);
		PageShow page=new PageShow (adm_id,listsize,pageNow);
		List<Customer> list=customerService.findAllCustomer(page);
		mod.addAttribute("list", list);
		mod.addAttribute("page", page);
		mod.addAttribute("mss","删除");
		return "jsp/customer/list";
	}
	
	/**
	 * 将要修改会员信息,显示出来,初始化修改
	 */
	@RequestMapping(value="/initedit/{id}")
	public String initedit(@PathVariable("id")Long id,Model mod){
		Customer customer=customerService.findCustomerById(id);
		mod.addAttribute("customer", customer);
		return "jsp/customer/edit";
	}
	
	/**
	 * 修改会员信息
	 */
	@RequestMapping(value="/edit")
	public String edit(Customer queryVo){
		customerService.updateCustomer(queryVo);
		return "jsp/success";
	}
	
	/**
	 * 查看会员信息
	 */
	@RequestMapping(value="/see/{id}")
	public String see(@PathVariable("id")Long id,Model mod){
		Customer customer=customerService.findCustomerById(id);
		mod.addAttribute("customer", customer);
		return "jsp/customer/see";
	}
	
	/**
	 * 删除会员信息
	 */
	@RequestMapping(value="/delete/{id}")
	public String delete(@PathVariable("id")Long id,HttpSession session,Model mod){
		customerService.deleteCustomerById(id);
		return "jsp/success";
	}
	
	/***
	 * 通过姓名查询会员
	 */
	@RequestMapping("/find")
	public String findC(Customer vo,Model mod){
		List<Customer> list=customerService.findCustomerByName(vo.getUsername());
		mod.addAttribute("list", list);
		return "jsp/customer/list";
	}
	
	
	/***
	 * 通过日期获取区间中的会员和流水
	 */
	@RequestMapping("/findbydate")
	public String findCustomerByDate(SelectByDate date,Model mod){
		List<Customer> list=customerService.findCustomerByDate(date);
		long price =0;
		for (Customer customer : list) {
			if(null!=customer.getPrice())
			price+=customer.getPrice();
		}
		mod.addAttribute("list", list);
		mod.addAttribute("zjq", price);
		return "jsp/customer/list2";
	}
}
