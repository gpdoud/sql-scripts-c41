select city, sum(sales) Sales
    from customers
    group by city
    having sum(sales) > 600000
    order by sales

