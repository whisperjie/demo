create table if not exists `user`(
    `id` INT auto_increment,
    `name` varchar(10) not null ,
    `password` varchar(10) not null ,
    `age` int,
    `sex` varchar(10),
    `isAdmin` tinyint,
    primary key (`id`),
    unique (`name`,`password`)
)ENGINE =InnoDB DEFAULT CHARSET =utf8;