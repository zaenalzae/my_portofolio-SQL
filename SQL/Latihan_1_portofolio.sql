------------DATA CLEANING------------
-- Data Source : https://www.kaggle.com/datasets/yaminh/smartphone-sale-dataset
select *
from smartphones_sales_dataset ssd ;

-- The Initial Brands must be Capital
select "Brands" 
from smartphones_sales_dataset ssd 
where lower(left("Brands",position(' 'in "Brands")-1))=left("Brands",position(' 'in "Brands")-1);

update smartphones_sales_dataset 
set "Brands" = initcap("Brands")
where lower(left("Brands",position(' 'in "Brands")-1))=left("Brands",position(' 'in "Brands")-1);

select * from smartphones_sales_dataset ssd ;

-- The Initial Mobile must be Capital
select "Mobile"  
from smartphones_sales_dataset ssd 
where lower(left("Mobile" ,position(' 'in "Mobile")-1))=left("Mobile" ,position(' 'in "Mobile")-1);

update smartphones_sales_dataset 
set "Mobile"  = initcap("Mobile")
where lower(left("Mobile" ,position(' 'in "Mobile")-1))=left("Mobile" ,position(' 'in "Mobile")-1);

-- Add categories smartphones column 
alter table smartphones_sales_dataset 
add categories varchar (25);

update smartphones_sales_dataset 
set "categories" = case
	when "Original Price" >=80000 then 'Luxury'
	when "Original Price" >=50000 then 'Premium'
	when "Original Price" >=30000 then 'Mid-Range'
	when "Original Price" >=15000 then 'Affordable'
	else 'Economic'
end;

-- Create New Table with unique and not duplikat data
create table categories_smartphones 
	as select distinct  "Brands" , "Models" , "Colors" 
	, "Memory", "Storage" , "Camera" , "Original Price" ,"Mobile" , "categories" as "Categories"
	from smartphones_sales_dataset ssd;

select * from categories_smartphones cs  ;

-- Add column Discount Percentage
alter table categories_smartphones 
add column "Discount Percentage" decimal(4,2);

update categories_smartphones 
set "Discount Percentage" = case
	when "Original Price" >=80000 then 0.25
	when "Original Price" >=50000 then 0.15
	when "Original Price" >=30000 then 0.08
	when "Original Price" >=15000 then 0.05
	else 0
end;

-- Add column Discount
alter table categories_smartphones 
add column "Discount" int;

update categories_smartphones 
set "Discount"  = case
	when "Original Price" >=80000 then 0.25*"Original Price" 
	when "Original Price" >=50000 then 0.15*"Original Price" 
	when "Original Price" >=30000 then 0.08*"Original Price" 
	when "Original Price" >=15000 then 0.05*"Original Price" 
	else 0
end;

-- Add column Selling price
alter table categories_smartphones 
add column "Selling Price" int;

update categories_smartphones 
set "Selling Price"  ="Original Price" - "Discount"  ;

--smartphones Profit Percentage
alter table categories_smartphones 
add column "Profit Percentage" decimal(4,2);

update categories_smartphones 
set "Profit Percentage" = case 
	when "Categories" = 'Economic'then 0.1
	when "Categories" = 'Affordable' then 0.15
	when "Categories" = 'Mid-Range' then 0.25
	when "Categories" = 'Premium' then 0.3
	else 0.4
end
;
select  "Categories","Profit Percentage"   from categories_smartphones cs group by "Categories", "Profit Percentage"  ;


-- Set No Card value to Memory where Memory = ''
select distinct *
from categories_smartphones cs 
where "Memory" ='';

update categories_smartphones 
set "Memory" ='No Card'
where "Memory" ='';


-- Set Not Mensioned value to Storage where Storage = ''
select distinct *
from categories_smartphones cs 
where "Storage"  ='';

update categories_smartphones 
set "Storage"  ='Not Mensioned'
where "Storage" ='';

-- Ensure no missing data from all column
select * 
from categories_smartphones cs 
where "Brands" is null or "Models" is null or "Colors" is null or "Memory" is null
or "Storage" is null or "Camera" is null or "Original Price" is null or "Mobile" is null 
or "Categories" is null or "Discount Percentage" is null or "Discount" is null or "Selling Price" is null ;


drop table categories_smartphones ;
