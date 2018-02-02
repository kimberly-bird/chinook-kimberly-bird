WITH TopTracks AS
	(select t.Name,
		   count(t.Name) PurchaseCount
	from Track t
	join InvoiceLine l on l.TrackId = t.TrackId
	join Invoice i on l.InvoiceId = i.InvoiceId
	where strftime('%Y', i.InvoiceDate) = "2013"
	group by t.Name
	order by PurchaseCount desc) 
SELECT Name, PurchaseCount FROM TopTracks
WHERE (
	SELECT MAX(PurchaseCount) FROM TopTracks
) = PurchaseCount
;