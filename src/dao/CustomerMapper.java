package dao;

import java.util.List;

import pojo.Customer;
import pojo.PageShow;
import pojo.QueryVo;
import pojo.SelectByDate;

public interface CustomerMapper {

	public int findCustomerSize(Long adm_id);
	
	public void addCustomerbyAdmin(QueryVo vo);
	
	public List<Customer> findAllCustomer(Long adm_id);

	public Customer findCustomerById(Long id);

	public void deleteCustomerById(Long id);

	public void updateCustomer(Customer queryVo);

	public List<Customer> findCustomerByName(String name);

	public List<Customer> findAllCustomer(PageShow page);

	public List<Customer> findCustomerByDate(SelectByDate date);
}
