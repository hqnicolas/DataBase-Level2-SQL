create trigger ti_sales on sales for insert as
 begin
 if datename (dw,getdate()) = 'Terça-Feira'
 begin
raiserror ('Vendas não podem ser feitas na terça.', 16,1)
 rollback tran
 return
 end
 end


 DROP TRIGGER IF EXISTS ti_sales
 go


ALTER TABLE sales DISABLE TRIGGER ti_sales
DISABLE TRIGGER ti_sales ON sales



DROP TRIGGER IF EXISTS Person.reminder;
GO
CREATE TRIGGER reminder ON Person.Address AFTER UPDATE AS
BEGIN
 IF (ROWCOUNT_BIG() = 0)
 RETURN;
IF ( UPDATE (StateProvinceID) OR UPDATE (PostalCode) )
 BEGIN
 RAISERROR ('Notify Customer Relations', 16, 1);
--OU
 THROW 50000,N'Notify Customer Relations',1
 END;
END
GO



THROW 50000, N'An error occurred', 1;
Msg 50000, Level 16, State 1, Line 11
An error occurred
RAISERROR (N'An error occurred', 16, 1)
Msg 50000, Level 16, State 1, Line 13
An error occurred
