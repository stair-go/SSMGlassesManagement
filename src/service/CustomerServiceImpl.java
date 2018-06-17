package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AdminMapper;
import dao.CustomerMapper;
import dao.FatieMapper;
import pojo.Admin;
import pojo.Customer;
import pojo.Fatie;
import pojo.PageShow;
import pojo.QueryVo;
import pojo.SelectByDate;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private FatieMapper fatieMapper;
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private AdminMapper adminMapper;
	

	public void saveAdmin(Admin admin) {
		adminMapper.saveAdmin(admin);
	}
	
	public Admin updateAdmin(Admin admin) {
		return adminMapper.updateAdmin(admin);
	}
	
	public Admin findNamePas(Admin admin) {
		return adminMapper.findNamePas(admin);
	}
	
	public Admin findUserById(Long id) {
		return adminMapper.findUserById(id);
	}
	
	public void addCustomerbyAdmin(QueryVo queryVo) {
		customerMapper.addCustomerbyAdmin(queryVo);
	}

	public List<Customer> findAllCustomer(Long adm_id) {
		return customerMapper.findAllCustomer(adm_id);
	}
	
	public List<Customer> findAllCustomer(PageShow page) {
		return customerMapper.findAllCustomer(page);
	}
	
	public Customer findCustomerById(Long id) {
		return customerMapper.findCustomerById(id);
	}

	public void deleteCustomerById(Long id) {
		customerMapper.deleteCustomerById(id);
	}

	public void updateCustomer(Customer queryVo) {
		customerMapper.updateCustomer(queryVo);
	}

	public List<Customer> findCustomerByName(String name) {
		return customerMapper.findCustomerByName(name);
	}
	
	public int findCustomerSize(Long adm_id) {
		return customerMapper.findCustomerSize(adm_id);
	}

	public List<Customer> findCustomerByDate(SelectByDate date) {
		return customerMapper.findCustomerByDate(date);
	}
	
	/**
	 * 发帖部分
	 */
	public void addFatie(Fatie fatie) {
		fatieMapper.addFatie(fatie);
		
	}

	public List<Fatie> finAllFatie() {
		return fatieMapper.findAllFatie();
	}

	public Fatie finFatieById(Long id) {
		return fatieMapper.findFatieById(id);
	}

	public void deleteFatieById(Long id) {
		fatieMapper.deleteFatieById(id);
	}

	public List<Fatie> findFatieByName(String name) {
		return fatieMapper.findFatieByName(name);
	}

	

	

	

	

	

	
	
}
