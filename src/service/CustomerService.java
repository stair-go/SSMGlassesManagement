package service;

import java.util.List;

import pojo.Admin;
import pojo.Customer;
import pojo.Fatie;
import pojo.PageShow;
import pojo.QueryVo;
import pojo.SelectByDate;

public interface CustomerService {

	

	public void addCustomerbyAdmin(QueryVo queryVo);

	public List<Customer> findAllCustomer(PageShow page);

	public Admin findNamePas(Admin admin);

	public Customer findCustomerById(Long id);

	public void deleteCustomerById(Long id);

	public void updateCustomer(Customer queryVo);

	public List<Customer> findCustomerByName(String name);

	public void addFatie(Fatie fatie);

	public List<Fatie> finAllFatie();

	public Fatie finFatieById(Long id);

	public void deleteFatieById(Long id);

	public Admin findUserById(Long id);

	public List<Fatie> findFatieByName(String name);

	public int findCustomerSize(Long adm_id);

	public void saveAdmin(Admin admin);

	public Admin updateAdmin(Admin admin);

	public List<Customer> findCustomerByDate(SelectByDate date);
}
