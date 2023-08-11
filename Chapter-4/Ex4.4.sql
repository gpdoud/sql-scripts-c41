SELECT v.VendorName, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal - i.PaymentTotal - i.CreditTotal Balance
from Vendors v, Invoices i
where i.InvoiceTotal - i.PaymentTotal - i.CreditTotal > 0
    and v.VendorId = i.VendorId
order by v.VendorName