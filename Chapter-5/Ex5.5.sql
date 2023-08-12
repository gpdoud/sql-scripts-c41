SELECT g.AccountDescription, count(li.InvoiceID) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
from GLAccounts g
join InvoiceLineItems li
    on g.AccountNo = li.AccountNo
join Invoices i
    on i.InvoiceID = li.InvoiceID
where i.InvoiceDate between '2022-10-01' and '2022-12-31'
group by g.AccountDescription
having count(li.InvoiceID) > 1
order by LineItemCount desc