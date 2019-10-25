package web.mongo.db.modal;

public class User {
int phone;

String name;
String email;
String city;
int postal;
String Desc;
String[] selected;

public User() {
	
}
public int getPhone() {
	return phone;
}
public void setPhone(int phone) {
	this.phone = phone;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getPostal() {
	return postal;
}
public void setPostal(int postal) {
	this.postal = postal;
}
public String getDesc() {
	return Desc;
}
public void setDesc(String desc) {
	Desc = desc;
}
public String[] getSelected() {
	return selected;
}
public void setSelected(String[] selected) {
	this.selected = selected;
}
public User(int phone, String name, String email, String city, int postal, String desc, String[] selected) {
	super();
	this.phone = phone;
	this.name = name;
	this.email = email;
	this.city = city;
	this.postal = postal;
	Desc = desc;
	this.selected = selected;
}

}
