package com.jsp.Employee.Entity;


import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
@Entity
public class Employee {
	
	@Id
	private int empId;
	private String empName;
	private double empSal;
	
	
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public double getEmpSal() {
		return empSal;
	}
	public void setEmpSal(double empSal) {
		this.empSal = empSal;
	}
	
	
	
	
}
