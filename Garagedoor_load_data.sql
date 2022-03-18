
USE GARAGEDOORS;

 

INSERT INTO factory.model(model_name) VALUES('Model A')
INSERT INTO factory.model(model_name) VALUES('Model B')
INSERT INTO factory.model(model_name) VALUES('Model C')

  
INSERT INTO factory.types(types_name,types_color,types_vertical_size, types_horizontal_size) VALUES('type 1','White',250,250)
INSERT INTO factory.types(types_name,types_color,types_vertical_size, types_horizontal_size) VALUES('type 2','Black',250,250)
INSERT INTO factory.types(types_name,types_color,types_vertical_size, types_horizontal_size) VALUES('type 3','Rose',250,250)
INSERT INTO factory.types(types_name,types_color,types_vertical_size, types_horizontal_size) VALUES('type 4','White',250,300)
INSERT INTO factory.types(types_name,types_color,types_vertical_size, types_horizontal_size) VALUES('type 5','Black',250,300)
INSERT INTO factory.types(types_name,types_color,types_vertical_size, types_horizontal_size) VALUES('type 6','Rose',250,300)


INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name A1',1,1,280)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name A2',1,2,320)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name A3',1,3,350)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name A4',1,4,320)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name A5',1,5,360)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name A6',1,6,400)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name B1',2,1,300)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name B2',2,2,330)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name B3',2,3,365)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name B4',2,4,330)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name B5',2,5,355)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name B6',2,6,405)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name C1',3,1,345)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name C2',3,2,385)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name C3',3,3,425)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name C4',3,4,360)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name C5',3,5,400)
INSERT INTO factory.doors(doors_name, model_id, types_id, list_price) VALUES('Name C6',3,6,455)



-- sales.purchaser_info table
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Kiss','Anna','+36-70-888-4563','kiss.anna@gmail.com','Király u. 18','Budapest','Hungary','1076');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Nagy','Gábor','+36-70-888-4517','nagy.gabor@gmail.com','Bartok u. 46','Fehérvár','Hungary','4528');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Szabó','Attila','+36-70-888-8527','szabo.attila@gmail.com','Fő út 3/b','Fehértó','Hungary','8517');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('John','Smith','+44-705-888-4563','john.smith@gmail.com','Santacruz str 40','Crick','England','ENP125');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Kiss','Ramona','+36-70-888-8659','kiss.Ramona@gmail.com','Király u. 43','Budapest','Hungary','1076');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Hangya','Piroska','+36-70-888-1158','hangya.piroska@gmail.com','Balaton u. 20','Budapest','Hungary','1126');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code, Tax_number)
VALUES('Pásztor','András','+36-70-888-4666','pasztor.andras@gmail.com','Tó u. 1','Pécel','Hungary','2536','54689877-1-26');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Varga','Bálint','+36-70-888-1248','varga.balint@gmail.com','Hajó u. 15','Budaőrs','Hungary','2820');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Cruz','Maria','+147-258-888-4569','kruz.maria@gmail.com','Independencia calle 457','Boca Chica','Republica Dominicana','BC16');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Franc','Antonio',NULL,'franc.antonio@gmail.com','Porto c. 118','Venice','Italy','158076');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Parlag','Henrich','+36-70-772-4563','parlag.henrich@gmail.com','Bartók u. 2','Verőce','Hungary','4450');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Harang','Zsolt','+36-70-452-4573','harang.zsolt@gmail.com','Lajta u. 25','Százhalombatta','Hungary','2076');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Harang','Erzébet','+36-70-452-1326','harang.erzsébet@gmail.com','Lajta u. 26','Százhalombatta','Hungary','2076');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Barack','Barna','+36-70-888-2588','barack.barna@gmail.com','Barnabás u. 156','Budapest','Hungary','1096');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code)
VALUES('Cseresznye','Richárd','+36-70-555-4563','cseresznye.richard@gmail.com','Kalász tér 1','Budapest','Hungary','1926');
INSERT INTO sales.purchaser_info(first_name, last_name, phone, email, street, city, state, Postal_code, Tax_number)
VALUES('Pór','Mária','+36-70-445-4563','por.maria@gmail.com','Balassy u. 15','Budapest','Hungary','1056','45869325-2-43');


-- shop

INSERT INTO sales.shop(shop_name, phone, email, street, city, state, postal_code)
VALUES('Garázskapú Budapest','361-576-4321','garazs.budapest@gmail.com','Bojt u. 13', 'Budapest','Hungary',1046),
      ('Garázskapú Debrecen','3670-379-8827','garazs.debrecen@gmail.com','Raktár út 140', 'Debrecen','Hungary',8820);


-- factory.stocks 
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,1,2);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,2,1);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,3,3);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,4,1);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,5,3);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,6,5);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,7,7);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,8,8);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,9,10);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,10,7);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,11,4);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,12,3);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,13,0);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,14,2);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,15,1);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,16,5);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,17,0);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(1,18,0);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,1,3);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,2,5);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,3,7);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,4,0);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,5,0);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,6,0);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,7,7);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,8,8);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,9,10);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,10,7);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,11,4);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,12,3);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,13,5);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,14,1);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,15,2);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,16,8);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,17,2);
INSERT INTO factory.stocks(shop_id, doors_id, quantity) VALUES(2,18,0);


INSERT INTO sales.employee(first_name, last_name, email, phone, active, shop_id, manager_id) VALUES('Karcagi','Nikoletta','karcagi.nicoletta@gmail.com','3620-886-4562',1,1,NULL);
INSERT INTO sales.employee(first_name, last_name, email, phone, active, shop_id, manager_id) VALUES('Halmos','Áron','halmos.aron@gmail.com','3620-886-4573',1,1,1);
INSERT INTO sales.employee(first_name, last_name, email, phone, active, shop_id, manager_id) VALUES('Rancsó','Imre','rancso.imre@gmail.com','3620-886-4594',1,2,NULL);
INSERT INTO sales.employee(first_name, last_name, email, phone, active, shop_id, manager_id) VALUES('Varga','Rita','varga.rita@gmail.com','3620-886-4505',1,2,3);



  
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(1,4,'20210415','20210418','20210420',1,2);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(3,4,'20210417','20210418','20210425',2,4);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(16,4,'20210418','20210422','20210424',1,1);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(10,4,'20210501','20210505','20210510',2,3);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(12,4,'20210503','20210508','20210512',1,1);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(3,4,'20210520','20210521','20210522',1,2);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(11,4,'20210605','20210606','20210612',2,4);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(7,4,'20210608','20210625','20210626',2,3);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(6,4,'20210702','20210705','20210709',1,1);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(5,4,'20210705','20210703','20210704',2,4);
INSERT INTO sales.orders(purchaser_id, order_status, order_date, shipping_date, shipped_date, shop_id,employee_id) 
VALUES(9,4,'20210712','20210715','20210718',2,3);





  
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(1,1,4,1,320.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(1,2,5,1,360.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(2,1,7,1,300.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(3,1,9,1,365.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(4,1,10,1,330.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(5,1,9,2,365.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(6,1,15,1,425.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(6,2,17,1,400.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(6,3,18,1,455.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(7,1,6,1,400.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(8,1,8,1,330.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(9,1,5,1,360.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(10,1,11,1,355.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(10,2,12,1,405.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(11,1,8,1,330.00,default);
INSERT INTO sales.order_items(order_id, item_id, doors_id, quantity, list_price, discount) VALUES(11,2,9,1,365.00,default);
