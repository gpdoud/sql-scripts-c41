SELECT top 10 v.VendorName, sum(i.PaymentTotal) PaymentSum
from Vendors v
join Invoices i
    on v.VendorID = i.VendorID
group by v.VendorName
order by PaymentSum desc