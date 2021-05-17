-- continue example 

Declare @idx int = 3;
while 1=1 begin
	if @idx % 9 = 0 begin
		set @idx = @idx +3;
	 continue;
end
	Print @idx;
		set @idx = @idx + 3
		if @idx > 100 begin
		break;
end;
end
print 'Perfecto!';
