USE GARAGEDOORS;
GO

CREATE or ALTER FUNCTION sales.setdiscount(
   @orderId int,
   @avaibleDiscount decimal (4,2)
   )
   RETURNS decimal (4,2)
   AS
   BEGIN
   
   DECLARE @taxNumber nvarchar(20)
   DECLARE @discount decimal(4,2)
   set @taxNumber = ( select Tax_number from sales.purchaser_info SPI 
join sales.orders SO on SPI.purchaser_id = SO.purchaser_id
where order_id = @orderId)


   IF len(@taxNumber) > 10 AND @taxNumber LIKE '%43' 
   BEGIN
   set @discount = @avaibleDiscount
   END
   ELSE 
   BEGIN
   set @discount = 0
   END
   RETURN @discount
	 
       
   END;
   GO
   
   -- use the function: sales.setdiscount(12,0.2))