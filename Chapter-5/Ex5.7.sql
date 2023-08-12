SELECT VendorName, AccountDescription, count(li.InvoiceID) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
from Vendors v
join Invoices i
    on v.VendorID = i.VendorID
join InvoiceLineItems li
    on li.InvoiceID = i.InvoiceID
join GLAccounts g
    on g.AccountNo = li.AccountNo
group by v.VendorID, v.VendorName, li.AccountNo, g.AccountDescription
order by v.VendorName, g.AccountDescription