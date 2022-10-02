// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract myStudent{
    uint public studentCount = 0;
    mapping (uint256 => Student) public id;
    
    enum section {web2, web3, productManagement}
// create a struct
    struct Student {
        string firstName;
        section StudentSection;
        string lastName;
        uint256 _id;
    }
    
    //create a function to add student
    function addStudent(string memory firstName, string memory lastName, uint256 _id) public {
     Student(firstName, section.web3, lastName, _id);
     //assign the id to the Student instance
     id[_id] = Student(firstName, section.web3, lastName, _id);
        studentCount += 1;
    }

     //  create a function to get student by id
    function getStudentId ( uint256 _id) public view  returns ( Student memory )  { 
       return id[ _id];
       
    }

//create a function to get student's section
    function getStudentSection(uint256 _id)public view returns (section) {
        return id[_id].StudentSection;
    }
    
}