--Create list of classes enrolled for each student

select s.Firstname, s.Lastname, s.StateCode, c.Subject, sc.ClassGradeValue
from StudentClass sc
join Student s
on sc.StudentId = s.Id
join Class c
on sc.ClassId = c.Id
order by Lastname, sc.ClassGradeValue