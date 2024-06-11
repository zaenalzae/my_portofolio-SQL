--pembuatan tabel categori
CREATE TABLE categories (
  category_id SERIAL NOT NULL PRIMARY KEY,	--kolom id kategori tidak boleh kosong dan primary key (uni, tidak duplikat)
  category_name VARCHAR(255),	--kolom nama kategori bertipe charakter dengan maksimal karakter 255 charakter
  description VARCHAR(255)	--kolom description bertipe charakter dengan maksimal karakter 255 charakter
);

--penginputan nilai kolom pada tabel categori
INSERT INTO categories (category_name, description)
VALUES
  ('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
  ('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
  ('Confections', 'Desserts, candies, and sweet breads'),
  ('Dairy Products', 'Cheeses'),
  ('Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
  ('Meat/Poultry', 'Prepared meats'),
  ('Produce', 'Dried fruit and bean curd'),
  ('Seafood', 'Seaweed and fish');
select * from categories;