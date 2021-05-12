--List class with instructurs 

select CONCAT(i.Firstname, ' ', i.Lastname) 'Teacher', c.Subject
	from Class c
	join Instructor i
	on c.InstructorId = i.Id
	order by Teacher;