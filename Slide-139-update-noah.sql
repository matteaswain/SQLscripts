-- Add new student info for Noah Phence
/*
insert into Student (Firstname,Lastname,StateCode,SAT,GPA,MajorId)
	values
		(	
			'Noah', 'Phense', 'GA', 1235, 3.15,
			(
				select ID from Major
					where Code = 'MATH'
			)
		);
*/
/*
update Student set
	GPA = 3.51, 
		MajorId = 
			(
				select Id from Major
					where code = 'ACCT'
			)
						where Firstname = 'Noah'and Lastname = 'Phence';
*/

/*
delete
	from Student
		where Firstname = 'Noah';
/*

