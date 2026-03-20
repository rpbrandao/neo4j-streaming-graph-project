
MATCH (a:Actor {name:"Leonardo DiCaprio"}),(m:Movie {title:"Inception"})
CREATE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name:"Keanu Reeves"}),(m:Movie {title:"The Matrix"})
CREATE (a)-[:ACTED_IN]->(m);

MATCH (d:Director {name:"Christopher Nolan"}),(m:Movie {title:"Inception"})
CREATE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name:"Christopher Nolan"}),(m:Movie {title:"Interstellar"})
CREATE (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title:"Inception"}),(g:Genre {name:"Sci-Fi"})
CREATE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title:"Titanic"}),(g:Genre {name:"Romance"})
CREATE (m)-[:IN_GENRE]->(g);

MATCH (u:User {name:"Alice"}),(m:Movie {title:"Inception"})
CREATE (u)-[:WATCHED {rating:5}]->(m);

MATCH (u:User {name:"Bob"}),(m:Movie {title:"The Matrix"})
CREATE (u)-[:WATCHED {rating:4}]->(m);

MATCH (u:User {name:"Carlos"}),(m:Movie {title:"Interstellar"})
CREATE (u)-[:WATCHED {rating:5}]->(m);
