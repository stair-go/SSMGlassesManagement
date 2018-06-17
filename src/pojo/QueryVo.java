package pojo;

public class QueryVo {
	private Long admin_id;
	private Customer customer;
	private int pageNow = 0;// 动态改变 页面取得  
    private int pageSize = 15;// 固定不变 
    
    private int star;// 动态改变 页面取得  
    private int end;// 固定不变 
    
	public Long getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(Long admin_id) {
		this.admin_id = admin_id;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
		star=pageNow*pageSize;
		end=(pageNow+1)*pageSize;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
