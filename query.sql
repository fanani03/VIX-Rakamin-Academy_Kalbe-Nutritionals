-- Berapa rata-rata umur customer jika dilihat dari marital statusnya ?

SELECT "Marital Status", AVG(age) AS rata2_umur
FROM customer
GROUP BY "Marital Status";

-- Berapa rata-rata umur customer jika dilihat dari gender nya ?

SELECT gender , AVG(age) AS rata2_umur
FROM customer
GROUP BY "gender";

-- Tentukan nama store dengan total quantity terbanyak!

SELECT storename, SUM(qty) AS jumlah_terbanyak
FROM store
INNER JOIN transaction ON store.storeid = transaction.storeid
GROUP BY storename
ORDER BY jumlah_terbanyak DESC
LIMIT 1;

-- Tentukan nama produk terlaris dengan total amount terbanyak!

SELECT product."Product Name", SUM(totalamount) AS totalamount_terbanyak
FROM product
INNER JOIN transaction ON product.productid = transaction.productid
GROUP BY product."Product Name"
ORDER BY totalamount_terbanyak DESC
LIMIT 1;





