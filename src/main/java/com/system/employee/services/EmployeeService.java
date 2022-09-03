package com.system.employee.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.employee.entities.Employee;
import com.system.employee.repositories.EmployeeRepository;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepository employeeRepository;

	public Optional<Employee> getEmployee(Integer id) {
		Optional<Employee> employee = employeeRepository.findById(id);
		return employee;
	}
	
	public Employee createEmployee(Employee employee) {
		
		return employee;
	}
	
	public Employee updateEmployee(Employee employee) {
		return employee;
	}
	
	public String deleteEmployee(Integer id) {
		return "Employee deleted successfully";
	}
}
