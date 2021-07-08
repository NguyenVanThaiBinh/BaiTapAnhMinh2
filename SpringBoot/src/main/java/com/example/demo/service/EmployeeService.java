package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.example.demo.exception.RecordNotFoundException;
import com.example.demo.model.EmployeeEntity;
import com.example.demo.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;


@Service
public class EmployeeService {
    // Dung ngay interface luon moi hay chu!!! tu jparesponsitory
    @Autowired
    EmployeeRepository repository;


//    public Page<EmployeeEntity> getPageEmployee(){
//         Page<EmployeeEntity> employeeEntityPage = repository.findAll(PageRequest.of(0, 5));
//         return employeeEntityPage;
//    }

    public Page<EmployeeEntity> getPageEmployee(Pageable pageable) {

        return repository.findAll(pageable);
    }



    public int getPageSize() {
        int size = 0;
        Pageable pageable = null;
         size = pageable.getPageSize();
        return size;
    }


    public List<EmployeeEntity> getAllEmployees() {
        List<EmployeeEntity> employeeList = repository.findAll(Sort.by(Sort.Direction.DESC, "id"));

        if (employeeList.size() > 0) {
            return employeeList;
        } else {
            return new ArrayList<EmployeeEntity>();
        }
    }

    public EmployeeEntity getEmployeeById(Long id) throws RecordNotFoundException {
        Optional<EmployeeEntity> employee = repository.findById(id);

        if (employee.isPresent()) {
            return employee.get();
        } else {
            throw new RecordNotFoundException("No employee record exist for given id");
        }
    }

    public void createEmployee(EmployeeEntity entity) throws RecordNotFoundException {
        entity = repository.save(entity);
    }

    public EmployeeEntity createOrUpdateEmployee(EmployeeEntity entity) throws RecordNotFoundException {
        Optional<EmployeeEntity> employee = repository.findById(entity.getId());

        if (employee.isPresent()) {

            EmployeeEntity newEntity = employee.get();

            newEntity.setEmail(entity.getEmail());
            newEntity.setFirstName(entity.getFirstName());
            newEntity.setLastName(entity.getLastName());

            newEntity = repository.save(newEntity);

            return newEntity;
        } else {
            entity = repository.save(entity);

            return entity;
        }
    }

    public void deleteEmployeeById(Long id) throws RecordNotFoundException {
        Optional<EmployeeEntity> employee = repository.findById(id);

        if (employee.isPresent()) {
            repository.deleteById(id);
        } else {
            throw new RecordNotFoundException("No employee record exist for given id");
        }
    }
}