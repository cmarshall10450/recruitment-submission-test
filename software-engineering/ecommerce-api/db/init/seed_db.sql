delete from orders;
delete from returns;

.separator ,
.import ../data/orders.csv orders
.import ../data/returns.csv returns