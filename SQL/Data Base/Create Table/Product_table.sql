--pembuatan tabel product
CREATE TABLE products (
  product_id SERIAL NOT NULL PRIMARY KEY, --kolom id product yang tidak boleh kosong dan primary key (unik, tidak boleh duplikat)
  product_name VARCHAR(255),	--kolom nama produk tipe charakter dengan maksimal 255 charakter
  category_id INT,	--kolom id kategory bertipe integer
  unit VARCHAR(255),	--kolom unit bertipe charakter dengan maksimal 255 charakter
  price DECIMAL(10, 2)	--kolom price bertipe decimal dengan 2 digit di belakang koma dari total 10 digit  
);

--penginputan nilai kolom pada tabel product
INSERT INTO products (product_id, product_name, category_id, unit, price)
VALUES
  (1, 'Chais', 1, '10 boxes x 20 bags', 18),
  (2, 'Chang', 1, '24 - 12 oz bottles', 19),
  (3, 'Aniseed Syrup', 2, '12 - 550 ml bottles', 10),
  (4, 'Chef Antons Cajun Seasoning', 2, '48 - 6 oz jars', 22),
  (5, 'Chef Antons Gumbo Mix', 2, '36 boxes', 21.35),
  (6, 'Grandmas Boysenberry Spread', 2, '12 - 8 oz jars', 25),
  (7, 'Uncle Bobs Organic Dried Pears', 7, '12 - 1 lb pkgs.', 30),
  (8, 'Northwoods Cranberry Sauce', 2, '12 - 12 oz jars', 40),
  (9, 'Mishi Kobe Niku', 6, '18 - 500 g pkgs.', 97),
  (10, 'Ikura', 8, '12 - 200 ml jars', 31),
  (11, 'Queso Cabrales', 4, '1 kg pkg.', 21),
  (12, 'Queso Manchego La Pastora', 4, '10 - 500 g pkgs.', 38),
  (13, 'Konbu', 8, '2 kg box', 6),
  (14, 'Tofu', 7, '40 - 100 g pkgs.', 23.25),
  (15, 'Genen Shouyu', 2, '24 - 250 ml bottles', 15.5),
  (16, 'Pavlova', 3, '32 - 500 g boxes', 17.45),
  (17, 'Alice Mutton', 6, '20 - 1 kg tins', 39),
  (18, 'Carnarvon Tigers', 8, '16 kg pkg.', 62.5),
  (19, 'Teatime Chocolate Biscuits', 3, '10 boxes x 12 pieces', 9.2),
  (20, 'Sir Rodneys Marmalade', 3, '30 gift boxes', 81),
  (21, 'Sir Rodneys Scones', 3, '24 pkgs. x 4 pieces', 10),
  (22, 'Gustafs Kneckebrod', 5, '24 - 500 g pkgs.', 21),
  (23, 'Tunnbrod', 5, '12 - 250 g pkgs.', 9),
  (24, 'Guarani Fantastica', 1, '12 - 355 ml cans', 4.5),
  (25, 'NuNuCa Nui-Nougat-Creme', 3, '20 - 450 g glasses', 14),
  (26, 'Gumber Gummiberchen', 3, '100 - 250 g bags', 31.23),
  (27, 'Schoggi Schokolade', 3, '100 - 100 g pieces', 43.9),
  (28, 'Rassle Sauerkraut', 7, '25 - 825 g cans', 45.6),
  (29, 'Thoringer Rostbratwurst', 6, '50 bags x 30 sausgs.', 123.79),
  (30, 'Nord-Ost Matjeshering', 8, '10 - 200 g glasses', 25.89),
  (31, 'Gorgonzola Telino', 4, '12 - 100 g pkgs', 12.5),
  (32, 'Mascarpone Fabioli', 4, '24 - 200 g pkgs.', 32),
  (33, 'Geitost', 4, '500 g', 2.5),
  (34, 'Sasquatch Ale', 1, '24 - 12 oz bottles', 14),
  (35, 'Steeleye Stout', 1, '24 - 12 oz bottles', 18),
  (36, 'Inlagd Sill', 8, '24 - 250 g jars', 19),
  (37, 'Gravad lax', 8, '12 - 500 g pkgs.', 26),
  (38, 'Cote de Blaye', 1, '12 - 75 cl bottles', 263.5),
  (39, 'Chartreuse verte', 1, '750 cc per bottle', 18),
  (40, 'Boston Crab Meat', 8, '24 - 4 oz tins', 18.4),
  (41, 'Jacks New England Clam Chowder', 8, '12 - 12 oz cans', 9.65),
  (42, 'Singaporean Hokkien Fried Mee', 5, '32 - 1 kg pkgs.', 14),
  (43, 'Ipoh Coffee', 1, '16 - 500 g tins', 46),
  (44, 'Gula Malacca', 2, '20 - 2 kg bags', 19.45),
  (45, 'Rogede sild', 8, '1k pkg.', 9.5),
  (46, 'Spegesild', 8, '4 - 450 g glasses', 12),
  (47, 'Zaanse koeken', 3, '10 - 4 oz boxes', 9.5),
  (48, 'Chocolade', 3, '10 pkgs.', 12.75),
  (49, 'Maxilaku', 3, '24 - 50 g pkgs.', 20),
  (50, 'Valkoinen suklaa', 3, '12 - 100 g bars', 16.25),
  (51, 'Manjimup Dried Apples', 7, '50 - 300 g pkgs.', 53),
  (52, 'Filo Mix', 5, '16 - 2 kg boxes', 7),
  (53, 'Perth Pasties', 6, '48 pieces', 32.8),
  (54, 'Tourtiare', 6, '16 pies', 7.45),
  (55, 'Pate chinois', 6, '24 boxes x 2 pies', 24),
  (56, 'Gnocchi di nonna Alice', 5, '24 - 250 g pkgs.', 38),
  (57, 'Ravioli Angelo', 5, '24 - 250 g pkgs.', 19.5),
  (58, 'Escargots de Bourgogne', 8, '24 pieces', 13.25),
  (59, 'Raclette Courdavault', 4, '5 kg pkg.', 55),
  (60, 'Camembert Pierrot', 4, '15 - 300 g rounds', 34),
  (61, 'Sirop d arable', 2, '24 - 500 ml bottles', 28.5),
  (62, 'Tarte au sucre', 3, '48 pies', 49.3),
  (63, 'Vegie-spread', 2, '15 - 625 g jars', 43.9),
  (64, 'Wimmers gute Semmelknadel', 5, '20 bags x 4 pieces', 33.25),
  (65, 'Louisiana Fiery Hot Pepper Sauce', 2, '32 - 8 oz bottles', 21.05),
  (66, 'Louisiana Hot Spiced Okra', 2, '24 - 8 oz jars', 17),
  (67, 'Laughing Lumberjack Lager', 1, '24 - 12 oz bottles', 14),
  (68, 'Scottish Longbreads', 3, '10 boxes x 8 pieces', 12.5),
  (69, 'Gudbrandsdalsost', 4, '10 kg pkg.', 36),
  (70, 'Outback Lager', 1, '24 - 355 ml bottles', 15),
  (71, 'Flotemysost', 4, '10 - 500 g pkgs.', 21.5),
  (72, 'Mozzarella di Giovanni', 4, '24 - 200 g pkgs.', 34.8),
  (73, 'Red Kaviar', 8, '24 - 150 g jars', 15),
  (74, 'Longlife Tofu', 7, '5 kg pkg.', 10),
  (75, 'Rhenbreu Klosterbier', 1, '24 - 0.5 l bottles', 7.75),
  (76, 'Lakkalikeeri', 1, '500 ml ', 18),
  (77, 'Original Frankfurter gr�ne Soae', 2, '12 boxes', 13);