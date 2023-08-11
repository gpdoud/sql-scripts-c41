SELECT InvoiceNumber as Number, InvoiceTotal as Total, 
        PaymentTotal + CreditTotal as Credits, InvoiceTotal - (PaymentTotal + CreditTotal) as Balance
from Invoices
Where InvoiceTotal between 500 and 10000;