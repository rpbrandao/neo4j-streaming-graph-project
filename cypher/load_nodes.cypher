
LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS row
CREATE (:User {id: toInteger(row.id), name: row.name, age: toInteger(row.age), country: row.country});

LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS row
CREATE (:Movie {id: toInteger(row.id), title: row.title, release_year: toInteger(row.release_year), duration: toInteger(row.duration)});

LOAD CSV WITH HEADERS FROM 'file:///series.csv' AS row
CREATE (:Series {id: toInteger(row.id), title: row.title, seasons: toInteger(row.seasons), release_year: toInteger(row.release_year)});

LOAD CSV WITH HEADERS FROM 'file:///actors.csv' AS row
CREATE (:Actor {id: toInteger(row.id), name: row.name, birth_year: toInteger(row.birth_year)});

LOAD CSV WITH HEADERS FROM 'file:///directors.csv' AS row
CREATE (:Director {id: toInteger(row.id), name: row.name, birth_year: toInteger(row.birth_year)});

LOAD CSV WITH HEADERS FROM 'file:///genres.csv' AS row
CREATE (:Genre {id: toInteger(row.id), name: row.name});
