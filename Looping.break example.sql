-- looping -- while example 
/*
Declare @idx int = 3;
while @idx < 103 
begin
	Print @idx;
		set @idx = @idx + 3;
end
print 'Perfecto!';

-- break example 

Declare @idx int = 3;
while 1=1
begin
	Print @idx;
		set @idx = @idx + 3
		if @idx = 102 begin
		break;
end;
end
print 'Perfecto!';

/*
