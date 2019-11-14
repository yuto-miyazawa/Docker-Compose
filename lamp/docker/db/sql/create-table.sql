-- tableの作成
create table IF not exists `mst_staff`
(
 `id` INT(20) AUTO_INCREMENT,
 `name` VARCHAR(20) NOT NULL,
 `password`  VARCHAR(64) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- insert
INSERT INTO mst_staff (name,password) VALUES ("hoge","1234");
INSERT INTO mst_staff (name,password) VALUES ("fuga","abcd");
INSERT INTO mst_staff (name,password) VALUES ("geoooo","ABCD");
