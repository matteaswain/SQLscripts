Begin Transaction;

Insert Major(Code, Description, MinSAT)
	values ('UWBW', 'Basket Weaving', 400);

	rollback;

select *
	from Major;
		