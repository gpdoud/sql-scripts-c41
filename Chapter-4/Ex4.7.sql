SELECT g.AccountNo, g.AccountDescription
from GLAccounts g
left join InvoiceLineItems il
    on il.AccountNo = g.AccountNo
where il.AccountNo is null
order by AccountNo