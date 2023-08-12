SELECT g.AccountDescription, count(li.InvoiceID) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
from GLAccounts g
join InvoiceLineItems li
    on g.AccountNo = li.AccountNo
group by g.AccountDescription
having count(li.InvoiceID) > 1
order by LineItemCount desc