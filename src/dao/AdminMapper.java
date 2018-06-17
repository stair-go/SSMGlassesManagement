package dao;

import java.util.List;

import pojo.Admin;

public interface AdminMapper {

	public Admin findNamePas(Admin admin);

	public Admin findUserById(Long id);

	public void saveAdmin(Admin admin);

	public Admin updateAdmin(Admin admin);
	
}
