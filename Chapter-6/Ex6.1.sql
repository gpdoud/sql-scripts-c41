SELECT Distinct VendorName
from Vendors v
join Invoices i
    on v.VendorID = i.VendorID
order by VendorName

SELECT Distinct VendorName
from Vendors v
where v.VendorID in (
    SELECT Distinct VendorID
    from Invoices
)
order by VendorName