-- List classes and instructors (if assigned)

select c.id, code, subject, section, CONCAT(Firstname, ' ', Lastname) 'Instructure Name' 
from Class c
join Instructor i
on c.InstructorId = i.Id
where c.Section >= 300 and c.Section < 400
order by c.section