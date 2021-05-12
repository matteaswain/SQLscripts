-- Display states and number of students in each

select s.StateCode, count(*) 'State Count'
	from Student s
	where SAT <1000 
	group by s.StateCode
	having count(*) >1
	order by [State Count] desc