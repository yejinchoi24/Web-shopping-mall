CREATE TABLE product (
    productId varchar(45) PRIMARY KEY,
    pName varchar(45),
    unitPrice int,
    description varchar(200),
    size varchar(45),
    category varchar(45),
    color varchar(45),
    temperature varchar(45),
    unitsInStock int,
    p_condition varchar(45),
    fileName varchar(45),
    quantity int
)default CHARSET=utf8;

desc product;

select* from product;



