package createevent.model;

public class User {
	
	protected int id;
	protected String name;
    protected String email;
    protected String mobilenumber;
    protected String eventdetails;
    protected String payment;
	
	
    
    
    
    
	public User(int id, String name, String email, String mobilenumber, String eventdetails, String payment) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobilenumber = mobilenumber;
		this.eventdetails = eventdetails;
		this.payment = payment;	
		
	}
	
	
	
	
	
	
	public User(String name, String email, String mobilenumber, String eventdetails, String payment) {
		super();
		this.name = name;
		this.email = email;
		this.mobilenumber = mobilenumber;
		this.eventdetails = eventdetails;
		this.payment = payment;
	}






	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public String getEventdetails() {
		return eventdetails;
	}
	public String getPayment() {
		return payment;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public void setEventdetails(String eventdetails) {
		this.eventdetails = eventdetails;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	
    
    
    
}
	
