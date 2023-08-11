SELECT concat(VendorContactLName, ', ', VendorContactFName) FullName
from Vendors
Where VendorContactLName like '[a-c,e]%'
order by VendorContactLName, VendorContactFName