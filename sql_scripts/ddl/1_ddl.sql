CREATE TABLE IF NOT EXISTS products
(
    product_id INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 ),
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    CONSTRAINT products_pkey PRIMARY KEY (product_id)
);

CREATE TABLE IF NOT EXISTS shops
(
    shop_id INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 ),
    shop_name VARCHAR(255) NOT NULL,
    CONSTRAINT shops_pkey PRIMARY KEY (shop_id)
);

CREATE TABLE IF NOT EXISTS plan
(
    product_id INTEGER NOT NULL,
    shop_id INTEGER NOT NULL,
    plan_cnt INTEGER,
    plan_date DATE,
    CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE,
    CONSTRAINT shop_id FOREIGN KEY (shop_id) REFERENCES shops (shop_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shop_citilink
(
    shop_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    sale_date DATE NOT NULL,
    sales_cnt INTEGER NOT NULL,
    CONSTRAINT shop_id FOREIGN KEY (shop_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
    CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shop_dns
(
    shop_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    sale_date DATE NOT NULL,
    sales_cnt INTEGER NOT NULL,
    CONSTRAINT shop_id FOREIGN KEY (shop_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
    CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shop_mvideo
(
    shop_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    sale_date DATE NOT NULL,
    sales_cnt INTEGER NOT NULL,
    CONSTRAINT shop_id FOREIGN KEY (shop_id) REFERENCES shops (shop_id) ON DELETE CASCADE,
    CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE
);

