SELECT v.VendorName Vendor, i.InvoiceDate Date, i.InvoiceNumber Number, 
        il.InvoiceSequence '#', il.InvoiceLineItemAmount InvoiceLineItemAmount
from Vendors v
join Invoices i
    on v.VendorID = i.VendorID
join InvoiceLineItems il
    on i.InvoiceID = il.InvoiceID
order by Vendor, [Date], Number, #