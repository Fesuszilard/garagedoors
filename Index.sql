
USE GARAGEDOORS;
GO



CREATE NONCLUSTERED INDEX IX__order_items_ON_order_id_INC_doors_id_quantity_list_price 
ON sales.order_items(order_id)
INCLUDE (doors_id,quantity, list_price);
GO


CREATE NONCLUSTERED INDEX IX_purchaser_info_first_name_last_name 
ON sales.purchaser_info (last_name, first_name);
GO


CREATE NONCLUSTERED INDEX IX_orders_ON_purchaserId_INC_shipping_date_shipped_date
ON sales.orders(purchaser_id) 
INCLUDE (shipping_date,shipped_date);
GO