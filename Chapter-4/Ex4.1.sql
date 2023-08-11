SELECT *
    from Vendors v
    join Invoices i
        on v.VendorID = i.VendorID;