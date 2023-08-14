SELECT InvoiceNumber, InvoiceTotal
from Invoices
where PaymentTotal > (
    SELECT avg(PaymentTotal)
    from Invoices
    where InvoiceTotal - PaymentTotal - CreditTotal = 0
)