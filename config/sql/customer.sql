/*

DROP DATABASE IF EXISTS ruby_store_development;

CREATE DATABASE ruby_store_development;

USE ruby_store_development;

Create table Customers
(id  int(11),
email varchar(20),
password varchar(20),
lastName varchar(10),
firstName varchar(10),
phone varchar(20),
PRIMARY KEY (id));


Create table Addresses
(id  int(11),
customer_id, int(11),
address1 varchar(20),
address2 varchar(20),
index varchar(10),
town varchar(20),
county varchar(20),
country varchar(20),
PRIMARY KEY (id));

*/



#Customers

INSERT INTO Customers  (email, password, lastName,firstName,phone,created_at)    VALUES

  ('Bonita.Morales@e.com', '1111', 'Morales', 'Bonita', '12345678' , CURRENT_TIMESTAMP),
  ('Ann.Beech@e.com', '1111', 'Beech', 'Ann', '0141-8483345' , CURRENT_TIMESTAMP),
  ('Alfreds.Futterkiste@e.com', '1111', 'Futterkiste', 'Alfreds', '0141-8483345' , CURRENT_TIMESTAMP);


#Addresses

INSERT INTO Addresses  (customer_id, address1, code, city, state, country)    VALUES

  (1,'Orange Square 1201',  '651', 'Eastpoint', 'FL', 'USA'),
  (2,'Obere Street 57', '354', 'Santa Monica', 'CA', 'USA'),
  (3,'Western Rd 1', '141', 'Chicago', 'IL', 'USA');

#Categories

INSERT INTO Categories  (name, occasion, age, created_at)    VALUES

  ('Woman', NULL, NULL, CURRENT_TIMESTAMP),
  ('Woman', NULL, '20-30', CURRENT_TIMESTAMP),
  ('Woman', NULL, '30-40', CURRENT_TIMESTAMP),
  ('Woman', NULL, '40-50', CURRENT_TIMESTAMP),
  ('Woman', 'Anniversary', NULL, CURRENT_TIMESTAMP),
  ('Woman', 'Valentine''s Day', NULL, CURRENT_TIMESTAMP);

# Material

INSERT INTO Materials (name, quality) VALUE
  /*1*/ ('Gold', '18K'),
  /*2*/ ('Sterling Silver', '925');

# Type

INSERT INTO Types (name) VALUE
  /*1*/ ('Rings'),
  /*2*/ ('Earrings'),
  /*3*/ ('Necklaces');


# Size

INSERT INTO Sizes (type_id,  us, uk,  cn, ind, it, inch, mm)  VALUE
  /*1*/ (1, '2', 'D', '2', '2',	'1.75', 0.474, 12.04),
  /*2*/ (1, '2 1/2',	'E', '3',	'3', '3', 0.538, 13.67),
  /*3*/ (2, 'Small',	'Small', 'Small',	'Small', 'Small', NULL, NULL),
  /*4*/ (2, 'Medium',	'Medium', 'Medium',	'Medium', 'Medium', NULL, NULL);

# Products

INSERT INTO Products (name, type_id, price, discount, stock, status , description)  VALUE

  /*1*/ ('Infinity', 1, 10, 0, 100, 'Available', 'The timeless symbol of infinity goes with any style, look, any season.' ),
  /*2*/ ('Olive Leaf', 2, 20, 0, 100, 'Discontinued', 'The beautiful symbol of an olive branch, expressing peace and abundance.' );


# ProductSize

INSERT INTO Product_Sizes (product_id, size_id, quantity) VALUE
   /*1*/ (1, 1, 40),
   /*2*/ (1, 2, 60),
   /*3*/ (2, 3, 30),
   /*4*/ (2, 4, 70);

# ProductMaterial

INSERT INTO Product_Materials (product_id, material_id, oz, g) VALUE
    /*1*/ (1, 2, 50, 1.8),
    /*1*/ (2, 1, 50, 1.8);

# ProductCategory   // delete from productCategories;

INSERT INTO Product_Categories (product_id, category_id) VALUE
    /*1*/ (1,6),
    /*2*/ (1,2),
    /*3*/ (2,3),
    /*4*/ (1,2),
    /*5*/ (2,1);


# Orders

INSERT INTO Orders  (customer_id, discount, tax, shippingFee, total, payment_id, status, created_at)    VALUES

  /*1*/ (1, NULL, 0.10, 10, 21, '001', 'Payed', CURRENT_TIMESTAMP),
  /*2*/ (1, NULL, 0.10, 10, 32, '001', 'Payed', CURRENT_TIMESTAMP),
  /*3*/ (1, NULL, 0.10, 10, 32, '001', 'Payed', CURRENT_TIMESTAMP),
  /*4*/ (2, NULL, 0.10, 10, 21, '001', 'Payed', CURRENT_TIMESTAMP),
  /*5*/ (2, NULL, 0.10, 10, 32, '001', 'Payed', CURRENT_TIMESTAMP),
  /*6*/ (2, 0.10, 0.10, 10, 20, '001', 'Payed', CURRENT_TIMESTAMP),
  /*7*/ (3, 0.10, 0.10, 10, 20, '001', 'Payed', CURRENT_TIMESTAMP);

# OrdersProduct

INSERT INTO Order_Products (order_id, product_id, quantity ) VALUE

  /*3*/ (1, 2, 1),
  /*1*/ (1, 1, 1),
  /*1*/ (2, 1, 1),
  /*2*/ (2, 1, 2),
  /*2*/ (3, 1, 2),
  /*3*/ (3, 2, 1),
  /*4*/ (4, 1, 1),
  /*5*/ (5, 2, 1),
  /*6*/ (6, 1, 1),
  /*7*/ (7, 1, 1);

# Images

INSERT INTO Images (product_id, name, url) VALUE

    /*1*/(1, 'small',  'products/1_P_S.jpg'),
    /*1*/(1, 'medium', 'products/1_P_M.jpg'),
    /*1*/(1, 'big',    'products/1_P_B.jpg'),
    /*1*/(2, 'small',  'products/2_P_S.jpg'),
    /*1*/(2, 'medium', 'products/2_P_M.jpg'),
    /*1*/(2, 'big',    'products/2_P_B.jpg');






DELETE FROM Addresses WHERE id=1;
ALTER TABLE Addresses  MODIFY code varchar(255) AFTER address2;
ALTER TABLE Addresses  MODIFY created_at varchar(255) AFTER country;
ALTER TABLE Addresses  MODIFY updated_at datetime AFTER created_at;
ALTER TABLE Categories MODIFY age varchar(255)

