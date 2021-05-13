-- add yourself and assessment into your database

insert into Students
	(Firstname, Lastname, Address, City, State, Zip, AssessmentScore)
		values 
			('Mattea', 'Swain', '2866 Mt Airy Ave','Cincinnati', 'OH','45239', 85);

insert into Assessments(Topic,Score,StudentId)
	values 
		('Git Hub', 110,
			(
				select Id
					from Students
						where Firstname = 'Mattea' and Lastname = 'Swain'
			)
		);

select s.Firstname,s.Lastname,s.Address,s.City,s.State,
	s.Zip,s.AssessmentScore,a.Score,a.Topic,a.Score
		from Students s
			join Assessments a
				on s.Id = a.StudentId;
