insert into crypto.coin_records(name, description) values('BTC', 'bitcoin');
insert into crypto.coin_records(name, description) values('ETH', 'ether');
insert into crypto.coin_records(name, description) values('DOGE', 'dogecoin');
insert into crypto.coin_records(name, description) values('XRP', 'ripple');
insert into crypto.coin_records(name, description) values('LTC', 'litecoin');
insert into crypto.coin_records(name, description) values('WRX', 'wazirx');
insert into crypto.coin_records(name, description) values('BTT', 'bitTorrent');
insert into crypto.coin_records(name, description) values('ZIL', 'ziliqa');
insert into crypto.coin_records(name, description) values('DASH', 'dash');
insert into crypto.coin_records(name, description) values('WIN', 'wink');
insert into crypto.coin_records(name, description) values('TRX', 'tron');
insert into crypto.coin_records(name, description) values('XLM', 'stellar');
insert into crypto.coin_records(name, description) values('HBAR', 'hasBargraph');
insert into crypto.coin_records(name, description) values('XEM', 'nem');
insert into crypto.coin_records(name, description) values('VET', 'veChain');
insert into crypto.coin_records(name, description) values('ZEC', 'Zcash');
insert into crypto.coin_records(name, description) values('LINK', 'chainLink');
insert into crypto.coin_records(name, description) values('HOT', 'Holo');
insert into crypto.coin_records(name, description) values('EOS', 'EOS');
insert into crypto.coin_records(name, description) values('CRV', 'CurveDaoToken');
insert into crypto.coin_records(name, description) values('DOT', 'PolkaDot');
insert into crypto.coin_records(name, description) values('ATOM', 'cosmos');
insert into crypto.coin_records(name, description) values('CELR', 'CelerNetwork');
insert into crypto.coin_records(name, description) values('DENT', 'dent');
insert into crypto.coin_records(name, description) values('EZ', 'EasyVZ');
insert into crypto.coin_records(name, description) values('SAFEMOON', 'safemoon');
insert into crypto.coin_records(name, description) values('MOONSTAR', 'moonstar');
insert into crypto.coin_records(name, description) values('USDT', 'USDT');
insert into crypto.coin_records(name, description) values('BNB', 'BNB');
insert into crypto.coin_records(name, description) values('MATIC', 'matic');
insert into crypto.crypto_user(name) VALUES ('aman');

select * from crypto.coin_records;
select * from crypto.crypto_user;
select * from crypto.crypto_order_history;

select coins from crypto.crypto_order_history;
select Sum(coins*price) as balance from crypto.crypto_order_history GROUP by user_id;
select avg(price) as avgPrice , (select name from crypto.coin_records where coin_id =h.coin_id) from crypto.crypto_order_history h where coins>0 GROUP by coin_id order by 1 desc;


