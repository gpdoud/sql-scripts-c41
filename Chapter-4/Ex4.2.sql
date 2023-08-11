SELECT v.VendorName, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal - i.PaymentTotal - i.CreditTotal Balance
from Vendors v
join Invoices i
    on v.VendorId = i.VendorId
where i.InvoiceTotal - i.PaymentTotal - i.CreditTotal > 0
order by v.VendorName