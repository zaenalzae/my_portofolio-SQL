--pembuatan tabel testproduk
CREATE TABLE testproducts (
  testproduct_id SERIAL NOT NULL PRIMARY KEY,	--kolom id testproduk tidak boleh kosong dan primary key(unik, tidak duplikat)
  product_name VARCHAR(255),	--kolom nama produk bertipe charakter maksimal 255
  category_id INT	--kolom id kategori bertipe integer
);

--penginputan nilai kolom pada tabel testproduct
INSERT INTO testproducts (product_name, category_id)
VALUES
  ('Johns Fruit Cake', 3),
  ('Marys Healthy Mix', 9),
  ('Peters Scary Stuff', 10),
  ('Jims Secret Recipe', 11),
  ('Elisabeths Best Apples', 12),
  ('Janes Favorite Cheese', 4),
  ('Billys Home Made Pizza', 13),
  ('Ellas Special Salmon', 8),
  ('Roberts Rich Spaghetti', 5),
  ('Mias Popular Ice', 14);
select * from testproducts;