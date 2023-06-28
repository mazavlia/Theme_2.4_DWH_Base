INSERT INTO shops (shop_id, shop_name) VALUES
	 (1, 'shop_dns'),
	 (2, 'shop_mvideo'),
	 (3, 'shop_citilink');

INSERT INTO products (product_id, product_name, price) VALUES
	 (1, 'Испорченный телефон', 4999),
	 (2, 'Сарафанное радио', 6999),
	 (3, 'Патефон', 3999);

INSERT INTO plan (product_id,shop_id,plan_cnt,plan_date) VALUES
	 (1,1,2,'2023-04-30'),
	 (2,1,2,'2023-04-30'),
	 (3,1,2,'2023-04-30');
