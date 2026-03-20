
# Graph Insights

Example insights generated from the graph.

## Popular movies
MATCH (u:User)-[:WATCHED]->(m:Movie)
RETURN m.title, count(*) AS views
ORDER BY views DESC

## User similarity
MATCH (u1:User)-[:WATCHED]->(m:Movie)<-[:WATCHED]-(u2:User)
WHERE u1 <> u2
RETURN u1.name, u2.name, count(m) AS shared_movies
