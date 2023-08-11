SELECT * 
from Invoices
where ((InvoiceTotal - PaymentTotal - CreditTotal > 0) AND PaymentDate is not null)
    OR ((InvoiceTotal - PaymentTotal - CreditTotal <= 0) and PaymentDate is null)