



drop database if exists ecsite;
create database if not exists ecsite;
use ecsite;

drop table if exists login_user;
create table login_user(
id int not null primary key,/*ID*/
login_id varchar(16) not null unique,/*loginID*/
login_pass varchar(16) not null unique,/*pass*/
user_name varchar(50),/*名前*/
sex tinyint default 0 not null,/*性別*/
email varchar(32) not null,/*address*/
logined tinyint default 0 not null, /*ログインフラグ*/ /*0:未ログイン 1:ログイン済*/
insert_date datetime not null,/*登録日*/
updated_date datetime/*更新日*/
);

drop table if exists item_info;
create table item_info(
id int not null primary key auto_increment,/*ID*/
item_maker varchar(50),/*メーカー名*/
item_name varchar(40),/*商品名*/
item_size varchar(12),/*サイズ*/
item_price int,/*金額*/
item_image_file_path varchar(100),/*画像ファイルパス*/
item_image_file_name varchar(50),/*画像ファイル名*/
item_stock int,/*個数*/
insert_date datetime,/*登録日*/
update_date datetime/*更新日*/
);

drop table if exists user_buy_item;

create table user_buy_item(
id int not null primary key auto_increment,/*ID*/
item_id int,/**/
total_price int,/**/
total_count int,/**/
user_master_id varchar(16),/**/
pay varchar(30),/**/
insert_date datetime,/**/
delete_date datetime/**/
);

INSERT INTO login_user VALUES(
1,
'spring',
'456',
'春野うらら',
1,
'sakura.jp',
0,
'2017/11/23 11/50/52',
'2017/11/23 11/55/53'
),


(
2,
'summer',
'789',
'夏見篤',
0,
'sea.jp',
0,
'2017/11/24 12/00/10',
'2017/11/24 12/05/20'
),

(
3,
'fall',
'101112',
'秋場 修',
0,
'ginnan.jp',
0,
'2017/11/24 13/30/19',
'2017/11/24 13/40/30'
),

(
4,
'winter',
'123',
'北川雪',
1,
'okota.jp',
0,
'2017/11/25 11/23/49',
'2017/11/26 11/32/06'
),

(
5,
'tuyu',
'666',
'雨堂 克男',
0,
'kaeru.jp',
0,
'2017/12/25 14/03/40',
'2017/12/26 19/35/08'
);

INSERT INTO item_info VALUES(
1,/*ID*/
'adidas',/*メーカー名*/
'STAN SITH',/*商品名*/
'27cm',/*サイズy*/
16000,/*金額*/
'./images/  .jpg',/*画像ファイルパス*/
'adidas',/*画像ファイル名*/
700,/*在庫*/
'2017/11/23 15/00/01',/*登録日*/
'2017/11/29 12/00/20'/*更新日*/
),

(
2,
'OnitukaTiger',
'TIGER ALLY',
'27cm',
14000,
'./images/.jpg',
'OnitukaTiger',
500,
'2017/11/23 15/00/02',
'2017/11/29 12/00/21'
),

(
3,
'CONVERSE',
'ALLSTAR',
'27cm',
5000,
'./images/.jpg',
'CONVERSE',
900,
'2017/11/23 15/00/03',
'2017/11/29 12/00/22'
),

(
4,
'NewBalance',
'M996',
'27cm',
24000,
'./images/  .jpg',
'NewBalance',
800,
'2017/11/23 15/00/04',
'2017/11/29 12/00/23'
),

(
5,
'NIKE',
'AIRMAX90',
'27cm',
13000,
'./images/.jpg',
'NIKE',
1000,
'2017/11/23 15/00/05',
'2017/11/29 12/00/24'
),

(
6,
'PUMA',
'SUEDE CLASSIC',
'27cm',
14000,
'./images/.jpg',
'PUMA',
400,
'2017/11/23 15/00/06',
'2017/11/29 12/00/25'
),

(
7,
'Reebook',
'INSTS PUMP FURY',
'27cm',
15000,
'./images/.jpg',
'Reebook',
600,
'2017/11/23 15/00/07',
'2017/11/29 12/00/26'
),

(
8,
'VANS',
'OLD SKOLL',
'27cm',
7500,
'./images/.jpg',
'VANS',
450,
'2017/11/23 15/00/08',
'2017/11/29 12/00/27'
);
