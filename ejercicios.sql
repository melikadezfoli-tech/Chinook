--ejerciocio 1

SELECT firstname, lastname FROM customers WHERE country='Brazil'

--ejercicio 2
SELECT lastname, firstname, title FROM employees WHERE title = 'Sales Support Agent'

--ejercicio 3
SELECT name from tracks where composer='AC/DC'

SELECT name from tracks where composer LIKE '%AC/DC%'

select t.name, t.composer, a.title from tracks AS t
INNER JOIN albums AS a ON t.AlbumId=a.AlbumId 
inner join artists AS ar ON a.ArtistId=ar.ArtistId

--ejercicio 4

SELECT customerid, FirstName, LastName FROM customers WHERE country<>'USA'

--ejercicio 5

SELECT firstname || ' ' || lastname AS Nombre_Completo FROM employees WHERE title = 'Sales Support Agent'

--ejercicio 6
SELECT firstname || ' ' || lastname AS Nombre_Completo, address || ' ' ||  city || ' ' || state ||' ' || country AS Direccion FROM employees WHERE title = 'Sales Support Agent'  --|| concatenacion

--ejercicio 7
SELECT DISTINCT billingcountry  from invoces

-- ejercicio 8
SELECT count(*), state from customers WHERE country='USA' GROUP by state

--ejercicio 8
SELECT COUNT(*) trackid FROM invoices WHERE invoiceid=37

--ejercicio 9
SELECT COUNT(*) trackid FROM tracks WHERE composer='AC/DC'

--ejercicio 10
SELECT COUNT(*) tracks, invoiceid FROM invoice_items GROUP by invoiceid

--ejercicio 11
SELECT i.customerid,COUNT(i.InvoiceId) from invoices as i
INNER join customers AS c ON i.CustomerId=c.CustomerId
GROUP by country

--ejercicio 12
SELECT COUNT(*)invoiceid from invoices where invoicedate BETWEEN '2009-01-01 00:00:00' and '2009-01-31 00:00:00'
SELECT COUNT(*)invoiceid from invoices where invoicedate BETWEEN '2011-01-01 00:00:00' and '2011-01-31 00:00:00'

--ejercicio 13
SELECT COUNT(*)invoiceid from invoices where invoicedate BETWEEN '2009-01-01 00:00:00' and '2011-01-31 00:00:00'

--ejercicio 14
SELECT COUNT(*)customerid, firstname from customers where country='Brazil' 
SELECT COUNT(*)customerid, firstname from customers where country='Spain' 

--ejercicio 15
SELECT name from tracks where name like 'You%' 

--SEGUNDA PARTE
--ejercicio 1
SELECT i.customerid, i.InvoiceId, i.InvoiceDate, c.FirstName, c.Country from invoices as i
inner join customers as c on i.CustomerId=c.CustomerId where country='Brazil'

--ejercicio 2
SELECT i.invoiceid, i.customerid, i billingcountry, c.customerid, c.country, e.firstname, e.lastname, e.country from invoices as i
INNER join customers as c on  i.billingcountry=c.country
INNER JOIN employees as e on c.country=e.country

--ejerciocio 3
SELECT c.customerid, c.State, e.firstname, e.lastname, e.country, e.Title from customers as c
INNER join employees as e on c.Country=e.Country
LEFT JOIN employees ON c.SupportRepId=e.ReportsTo

--ejercicio 4

 SELECT i.invoiceid, i.trackid FROM invoice_items as i
inner join tracks as t on i.TrackId=t.TrackId
