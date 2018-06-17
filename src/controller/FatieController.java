package controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.Fatie;
import pojo.QueryVo;
import service.CustomerService;

@Controller
@RequestMapping("/fatie")
public class FatieController {
	
	/**
	 * 注入CustomerService
	 */
	@Autowired
	private CustomerService customerService;
	
	/**
	 * 添加一个帖子消息
	 * @param queryVo
	 * @return
	 */
	@RequestMapping("/add")
	public String add(Fatie fatie,Model mod){
		customerService.addFatie(fatie);
		return list(mod);
	}
	
	/**
	 * 查看所有帖子消息
	 * @param queryVo
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model mod){
		List<Fatie> list=customerService.finAllFatie();
		mod.addAttribute("list", list);
		return "jsp/fatie/list";
	}
	
	/**
	 * 查看一个帖子消息
	 * @param queryVo
	 * @return
	 */
	@RequestMapping(value="/see/{id}")
	public String see(@PathVariable("id")Long id, Model mod){
		Fatie fatie=customerService.finFatieById(id);
		mod.addAttribute("fatie", fatie);
		return "jsp/fatie/see";
	}
	
	/**
	 * 删除一个帖子消息
	 * @param queryVo
	 * @return
	 */
	@RequestMapping(value="/delete/{id}")
	public String delete(@PathVariable("id")Long id, Model mod){
		customerService.deleteFatieById(id);
		return list(mod);
	}
	
	/**
	 * 通过用户名查找帖子
	 * @param queryVo
	 * @return
	 */
	@RequestMapping(value="/findFatieByName")
	public String findFatieByName(String username, Model mod){
		List<Fatie> list=customerService.findFatieByName(username);
		mod.addAttribute("list", list);
		return "jsp/fatie/list";
	}
		
}
