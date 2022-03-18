USE GARAGEDOORS;
GO


-- This procedure create an new order row and give back the order_id, 
-- this procedure serve just for the sales.addSalesOrderItems procedure.

drop procedure if exists  sales.addSalesOrder;

go


CREATE PROCEDURE  sales.addSalesOrder(

	@purchaser_id int,
	@order_status tinyint = 1,
	@order_date DATE,
	@shipping_date DATE ,
	@shipped_date DATE = NULL,
	@shop_id INT,
	@employee_id INT,
	@addedid int output
)

AS
if @purchaser_id  in (select purchaser_id from sales.purchaser_info)
BEGIN
declare @table table (logid int)

INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
output inserted.order_id into @table

VALUES(@purchaser_id,@order_status,@order_date,@shipping_date,@shipped_date,@shop_id,@employee_id)

select @AddedId = logid from @table
END
ELSE
BEGIN
RETURN -1
END;


GO

drop procedure if exists  sales.addSalesOrderItems;

go

-- This procedure create the the orderItems row if item_id = 1 ,it also creates 
-- a new row in the sales.orders table by call the AddSalesOrder. If the item_id > 1 
-- it creates just a new row in the sales.order_items table.
-- the function sales.setdiscount is used up in both case.
CREATE PROCEDURE  sales.addSalesOrderItems(

	@item_id int,
	@doors_id int,
	@quantity int ,
	@avaibleDiscount decimal (4,2),
	@purchaser_id int,
	@order_status tinyint = 1,
	@order_date DATE,
	@shipping_date DATE ,
	@shipped_date DATE = NULL,
	@shop_id int,
	@employee_id int 
)

AS
IF @item_id = 1
BEGIN
declare @out int
declare @raiseCode int  --for return value from salesorders proc.
exec @raiseCode = sales.addSalesOrder @purchaser_id,@order_status,@order_date,@shipping_date,@shipped_date,
@shop_id,@employee_id, @out output
if @raiseCode = -1 
BEGIN
RAISERROR('Error occurred the purchaser_id doesn`t exist', 1, 1)   -- this will write out if It has error
END
ELSE
BEGIN
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount)
VALUES(@out,@item_id,@doors_id,@quantity,(select list_price from factory.doors where doors_id = @doors_id),
sales.setdiscount(@out,@avaibleDiscount));
END
END
ELSE IF @item_id > 1
BEGIN
if @purchaser_id  in (select purchaser_id from sales.purchaser_info)
BEGIN
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount)
VALUES((select max(order_id) from sales.orders where purchaser_id = @purchaser_id),@item_id,@doors_id,@quantity,
(select list_price from factory.doors where doors_id = @doors_id),
sales.setdiscount(@out,@avaibleDiscount))
END
END
ELSE
BEGIN
RAISERROR('The item_id has to be equal or bigger then 1', 1, 1)
END;

GO

--exec AddSalesOrderItems 1,15,4,NULL,10,1,'2015-05-25','2015-09-09',NULL,1,1


-- set up the discount procedure
drop procedure if exists sales.setDiscountProcedure;

go


CREATE PROCEDURE  sales.setDiscountProcedure(

	@order_id int,
	@item_id int,
	@discount decimal (4,2)
	
)

AS

BEGIN TRY
UPDATE sales.order_items
set discount = sales.setdiscount(@order_id,@discount)
where order_id = @order_id and item_id = @item_id 
END TRY
BEGIN CATCH
RAISERROR ('Error check the parameters',1,1)
END CATCH

-- exec sales.setDiscountProcedure 3,1,0.3



