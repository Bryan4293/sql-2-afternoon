--Practice joins
1. SELECT * FROM invoice AS i
JOIN invoice_line AS il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

2. SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice AS i
JOIN customer AS c
ON i.customer_id = c.customer_id;

3. SELECT c.first_name,c.last_name, e.first_name, e.last_name
FROM customer AS c
JOIN employee AS e
ON c.support_rep_id = e.employee_id;

4. SELECT al.title, ar.name
FROM  album AS al
JOIN artist AS ar
ON al.artist_id = ar.artist_id;

5. SELECT pt.track_id 
FROM playlist_track AS pt
JOIN playlist AS p
ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

6. SELECT t.name
FROM track AS t
JOIN playlist_track AS pt
ON pt.track_id = t.track_id
WHERE playlist_id = 5;

7. SELECT t.name, p.name
FROM track AS t
JOIN playlist_track AS pt ON pt.track_id = t.track_id
JOIN playlist AS p ON p.playlist_id = pt.playlist_id;

8. SELECT t.name, al.title
FROM track AS t
JOIN album AS al ON al.album_id= t.album_id
JOIN genre AS g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';