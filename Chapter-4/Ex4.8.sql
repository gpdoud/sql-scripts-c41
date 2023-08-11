SELECT VendorName, VendorState
from Vendors
where VendorState = 'CA'

UNION

SELECT VendorName, 'Outside CA'
from Vendors
where VendorState != 'CA'
order by VendorName;

/*
SELECT VendorName, IIF(VendorState = 'CA', 'CA', 'Outside CA')
from Vendors
order by VendorName;
*/