SELECt c.Name, sum(ol.Quantity * ol.Price) 'Total Orders'
from customers c
join Orders o on c.Id = o.CustomerId
join OrderLines ol on o.Id = ol.OrdersId
where c.Id = 40
group by c.Name


/*
    select * 
    from customers c 
    join orders o 
        on c.id = o.CustomerId
    join orderlines ol
        on o.id = ol.ordersId
    where c.id = 40
    order by c.id desc;

    insert customers (name, city, state) values ('Greg', 'Loveland', 'OH')

    insert orders (CustomerId, Description) values (40, 'Greg''s first order');

    insert orderlines (OrdersId, Product, Description, Quantity, Price) VALUES
                        (27, 'ECHO', 'Amazon Echo', 1, 100),
                        (27, 'ECHODOT', 'Amazon Echo Dot', 2, 50),
                        (27, 'ECHOSHOW', 'Amazon Echo Show', 3, 200);
*/