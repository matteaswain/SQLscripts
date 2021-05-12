select 'A' as 'Letter Grade' , * 
	from Student
	where SAT > 1200
	union
Select 'B' as 'Letter Grade', *
from Student
where SAT <=1200 and SAT >100
union
select 'C' as 'Letter Grade', *
from Student
where SAT <= 1000