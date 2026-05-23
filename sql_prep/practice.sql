-- Internship Prep: SQL Joins and Aggregations Practice
-- Database: Chinook Medial Store

SELECT * FROM Track LIMIT 5;

SELECT 
Track.TrackId, 
Track.Name as TrackName, 
Album.Title as AlbumTitle
from Track
inner join Album on Track.AlbumId = Album.AlbumID
limit 10;

select
Playlist.PlaylistId,
Playlist.Name as PlaylistName,
PlaylistTrack.TrackId,
Track.Name as TrackName
from Playlist
left join PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId
left join Track on PlaylistTrack.TrackId = Track.TrackId;

select FirstName, LastName, City, Country, 'Employee' as Role
from Employee
union
select FirstName, LastName, City, Country, 'Customer' as Role
from Customer;