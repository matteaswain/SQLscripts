select m.Code, m.Description, m.MinSAT
from MajorClass c
join Major m
on c.MajorId = m.Id
where  m.Description = 'General Business'