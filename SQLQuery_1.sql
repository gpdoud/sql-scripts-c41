select *
from GLAccounts
where AccountDescription like '__C%'









/*
Select *
from GLAccounts
where AccountNo in (
        select AccountNo
        from GLAccounts
        where left(AccountDescription, 8) = 'Employer'
);



-- Invoices with totals greater than 10,000
select * 
from invoices
where InvoiceTotal > (select AVG(InvoiceTotal)
                        from Invoices);





select *
from glAccounts
where AccountNo NOT IN (100, 200, 300);

--SELECT 'Greg' + ' ' + 'O''Dowd'


SELECT top 5 InvoiceID Id, InvoiceTotal, CreditTotal, PaymentTotal, CreditTotal + PaymentTotal  'Total Credits'
from Invoices 
order by InvoiceTotal desc

select * 
from glAccounts 
where AccountNo >= 300 
        AND AccountNo <= 600
order by AccountDescription desc, AccountNo
*/