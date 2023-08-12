SELECT v.VendorName, count(distinct il.AccountNo) Accounts
from Vendors v
join Invoices i
    on i.VendorID = v.VendorID
join InvoiceLineItems il
    on i.InvoiceID = il.InvoiceID
group by v.VendorName
having count(distinct il.AccountNo) > 1