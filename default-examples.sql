use EdDb

Declare @MinGPA int;
Declare @MinSAT int;
Set @MinGPA = 3.0 ;
Set @MinSAT = 1200;


select *
	from Student
		where GPA >= @MinGPA and SAT >= @MinSAT
			order by Lastname;



-- parameterized select statements--

--Declare @AmazonId int;
--Select @AmazonId = Id From venders where code = 'AMAZ';

 