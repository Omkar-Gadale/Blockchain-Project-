//SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

// Creating a Smart Contract
contract p1{

	// Structure of student
	struct student{
		
		// State variables
		int sid;
		string name;
		string department;
	}
	student []s1;

	// Function to add student details
	function addStudent(
		int sid, string memory name,
		string memory department
	) public{
		student memory s
			=student(sid,
					name,
					department);
		s1.push(s);
	}

	// Function to get details of student
	function getStudent(
		int sid
	) public view returns(
		string memory,
		string memory){
		uint i;
		for(i=0;i<s1.length;i++)
		{
			student memory s
				=s1[i];
			
			// Looks for a matching student id
			if(s.sid==sid)
			{
					return(s.name,
						s.department);
			}
		}
		
		// If provided student id is not present returns "Not Found"
		return("Not Found",
				"Not Found");
	}
}