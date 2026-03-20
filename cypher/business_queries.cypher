
// Top rated movies
MATCH (u:User)-[w:WATCHED]->(m:Movie)
RETURN m.title, avg(w.rating) AS avg_rating
ORDER BY avg_rating DESC;

// Users who watched the same movie
MATCH (u1:User)-[:WATCHED]->(m:Movie)<-[:WATCHED]-(u2:User)
WHERE u1 <> u2
RETURN u1.name AS User1, u2.name AS User2, m.title;

// Recommend movies based on genre
MATCH (u:User {name:"Alice"})-[:WATCHED]->(m:Movie)-[:IN_GENRE]->(g:Genre)
MATCH (rec:Movie)-[:IN_GENRE]->(g)
WHERE NOT (u)-[:WATCHED]->(rec)
RETURN rec.title AS recommendation
LIMIT 5;

// Movies by director
MATCH (d:Director)-[:DIRECTED]->(m:Movie)
RETURN d.name AS Director, collect(m.title) AS Movies;
