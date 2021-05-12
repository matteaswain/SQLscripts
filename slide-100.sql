-- students w SAT below average

select CONCAT(Firstname, ' ' ,Lastname)'Student' , SAT, GPA
from Student
where SAT < (select avg(SAT)from Student)
order by SAT;