SELECT v.VendorName, count(i.InvoiceID) InvoiceCount, sum(i.InvoiceTotal) InvoiceSum
from Vendors v
join Invoices i
    on v.VendorID = i.VendorID
group by v.VendorID, v.VendorName
order by InvoiceCount desc