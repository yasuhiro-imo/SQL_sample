/*
************************************************************
SQL
Database（programming）を作成

	テーブル（tbl_java)を追加
		フィールド"id"をプライマリキーに設定
		
	テーブル（tbl_kotlin)を追加
		フィールド"id"をプライマリキーに設定
		
	テーブル（tbl_android)を作成
		フィールド"id"をプライマリキーに設定
		フィールド"release"と"genre_id"を外部キーに設定
		
	テーブル（tbl_ios)を作成
		フィールド"id"をプライマリキーに設定
		フィールド"release"と"genre_id"を外部キーに設定
		
	テーブル（tbl_download)を作成
		フィールド"genre_id"をプライマリキーに設定
		
	テーブル（tbl_period)を作成

各テーブルの各フィールドに値を挿入
************************************************************
*/

create database programming;

use programming;

create table tbl_java (
    id       INTEGER     NOT NULL PRIMARY KEY,
    name     VARCHAR(40)
);

create table tbl_kotlin (
    id       INTEGER     NOT NULL PRIMARY KEY,
    name     VARCHAR(40)
);

create table tbl_android (
    id       INTEGER     NOT NULL PRIMARY KEY,
    name     VARCHAR(40),
    release  DATE,
    genre_id INTEGER     NOT NULL,
    FOREIGN KEY(release) REFERENCES tbl_period(start_date),
    FOREIGN KEY(genre_id) REFERENCES tbl_download(genre_id)
);

create table tbl_ios (
    id       INTEGER     NOT NULL PRIMARY KEY,
    name     VARCHAR(40),
    release  DATE,
    genre_id INTEGER     NOT NULL,
    FOREIGN KEY(release) REFERENCES tbl_period(start_date),
    FOREIGN KEY(genre_id) REFERENCES tbl_download(genre_id)
);

create table tbl_download (
    genre_id INTEGER     NOT NULL PRIMARY KEY,
    reward   NUMERIC(14,0)
);

create table tbl_period (
    period   INTEGER,
    start_date DATE,
);

insert into tbl_java values (10,'foo');
insert into tbl_java values (20,'var');
insert into tbl_java values (30,'hoge');

insert into tbl_kotlin values (1,'kit');
insert into tbl_kotlin values (2,'motto');
insert into tbl_kotlin values (3,'yatto');
insert into tbl_kotlin values (4,'cat');
insert into tbl_kotlin values (5,'carrot');

insert into tbl_android values (101,'Lollipop','2010-04-01',10);
insert into tbl_android values (102,'Marshmallow','2012-04-01',10);
insert into tbl_android values (103,'Nougat','2014-04-01',20);
insert into tbl_android values (104,'Oreo','2016-04-01',30);
insert into tbl_android values (105,'Pie','2018-04-01',30);

insert into tbl_ios values (201,'OSX1','2010-04-01',10);
insert into tbl_ios values (202,'OSX2','2012-04-01',10);
insert into tbl_ios values (203,'OSX3','2014-04-01',20);
insert into tbl_ios values (204,'OSX4','2016-04-01',30);
insert into tbl_ios values (205,'OSX5','2018-04-01',30);

insert into tbl_download values (10,5000);
insert into tbl_download values (20,5500);
insert into tbl_download values (30,8000);

insert into tbl_period values (1,'2010-04-01');
insert into tbl_period values (2,'2012-04-01');
insert into tbl_period values (3,'2014-04-01');
insert into tbl_period values (4,'2016-04-01');
insert into tbl_period values (5,'2018-04-01');

