SELECT VendorID, sum(PaymentTotal) PaymentSum
from Invoices
group by VendorID