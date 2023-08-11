SELECT InvoiceTotal, InvoiceTotal * 0.1 '10%', InvoiceTotal * 1.1 'Plus 10%'
from Invoices
where InvoiceTotal - PaymentTotal - CreditTotal > 1000
order by InvoiceTotal desc