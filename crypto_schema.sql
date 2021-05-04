use crypto;

create table coin_records(
	coin_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(40) not null,
	description VARCHAR(256)
);

create table crypto_user(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(40) not null
);


create table crypto_order_history(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT REFERENCES crypto_user(user_id),
	coin_id INT REFERENCES coin_records(coin_id),
	coins LONG NOT NULL,
	price INT8 NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

alter table crypto.coin_records add CONSTRAINT cyrpto_name_unique UNIQUE(name);
alter table crypto.crypto_user add CONSTRAINT user_name_unique UNIQUE(name);

alter table crypto.crypto_order_history modify COLUMN price FLOAT8(20,7);
alter table crypto.crypto_order_history modify COLUMN coins FLOAT8(20,7);
