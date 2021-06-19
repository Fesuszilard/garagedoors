DROP DATABASE IF EXISTS GARAGEDOORS
GO
CREATE DATABASE GARAGEDOORS
GO
USE GARAGEDOORS

GO

CREATE SCHEMA faktory;

GO

CREATE SCHEMA sales;

GO

-- create tables
CREATE TABLE faktory.model (
	model_id INT IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	model_name NVARCHAR (100) NOT NULL
);

GO

CREATE TABLE faktory.types (
	types_id INT IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	types_name NVARCHAR (100) NOT NULL
);

GO

CREATE TABLE faktory.doors (
	doors_id INT IDENTITY (1, 1) PRIMARY KEY,
	doors_name NVARCHAR (255) NOT NULL,
	model_id INT NOT NULL,
	types_id INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	doors_color NVARCHAR(100) NOT NUll,
	doors_sizes VARCHAR(50),
	CONSTRAINT FK_TYPES FOREIGN KEY (types_id) REFERENCES faktory.types(types_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_MODEL FOREIGN KEY (model_id) REFERENCES faktory.model (model_id) ON DELETE CASCADE ON UPDATE CASCADE
);

GO

CREATE TABLE sales.purchaser_info (
	purchaser_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name NVARCHAR (50) NOT NULL UNIQUE,
	last_name NVARCHAR (50) NOT NULL UNIQUE,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL UNIQUE,
	street NVARCHAR (100),
	city NVARCHAR (50),
	state NVARCHAR (50),
	Postal_code VARCHAR (10),
	CONSTRAINT CH_EMAIL CHECK (email LIKE '%@%'),
	CONSTRAINT CH_FIRST_NAME CHECK (first_name LIKE '__%'),
    CONSTRAINT CH_LAST_NAME CHECK (last_name LIKE '__%')
);

CREATE TABLE sales.shop (
	shop_id INT IDENTITY (1, 1) PRIMARY KEY,
	shop_name NVARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street NVARCHAR (100),
	city NVARCHAR (100),
	state NVARCHAR (50),
	postal_code VARCHAR (10)
);

CREATE TABLE sales.employee (
	employee_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name NVARCHAR (50) NOT NULL UNIQUE,
	last_name NVARCHAR (50) NOT NULL UNIQUE,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	active tinyint NOT NULL,	shop_id INT NOT NULL,	manager_id INT,	CONSTRAINT FK_SHOP_ID FOREIGN KEY (shop_id) REFERENCES sales.shop (shop_id) ON DELETE CASCADE ON UPDATE CASCADE,	CONSTRAINT FK_MANAGER_ID FOREIGN KEY (manager_id) REFERENCES sales.employee (employee_id) ON DELETE NO ACTION ON UPDATE NO ACTION,	CONSTRAINT CH_EMAIL CHECK (email LIKE '%@%'),
	CONSTRAINT CH_FIRST_NAME CHECK (first_name LIKE '__%'),
    CONSTRAINT CH_LAST_NAME CHECK (last_name LIKE '__%')
	);
	
		

CREATE TABLE sales.orders (
	order_id INT IDENTITY (1, 1) PRIMARY KEY,
	purchaser_id INT,
	order_status tinyint NOT NULL,
	-- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
	order_date DATE NOT NULL,
	shipping_date DATE NOT NULL,
	shipped_date DATE,
	shop_id INT NOT NULL,
	employee_id INT NOT NULL,
	FOREIGN KEY (purchaser_id) REFERENCES sales.purchaser_info (purchaser_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (shop_id) REFERENCES sales.shop (shop_id),
	FOREIGN KEY (employee_id) REFERENCES sales.employee (employee_id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE sales.order_items (
	order_id INT,
	item_id INT,
	doors_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	discount DECIMAL (4, 2) NOT NULL DEFAULT 0,
	PRIMARY KEY (order_id, item_id),
	CONSTRAINT FK_ORDER_ID FOREIGN KEY (order_id) REFERENCES sales.orders (order_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_DOORS_ID FOREIGN KEY (doors_id) REFERENCES faktory.doors (doors_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE faktory.stocks (
	shop_id INT,
	door_id INT,
	quantity INT,
	PRIMARY KEY (shop_id, door_id),
	CONSTRAINT FK_SHOP_ID FOREIGN KEY (shop_id) REFERENCES sales.shop (shop_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_DOOR_ID FOREIGN KEY (door_id) REFERENCES faktory.doors (doors_id) ON DELETE CASCADE ON UPDATE CASCADE
);