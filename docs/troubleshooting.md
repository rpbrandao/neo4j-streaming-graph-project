
# Troubleshooting

Common issues while running this Neo4j project.

## CSV not loading
Error: Couldn't load external resource

Solution:
Move CSV files into the Neo4j import directory.

## Duplicate nodes
Cause: No uniqueness constraints.

Solution:
Run create_constraints.cypher before loading nodes.
