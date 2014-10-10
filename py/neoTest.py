import sys
from py2neo import neo4j

graph_db = neo4j.GraphDatabaseService("http://localhost:7474/db/data/")

query = neo4j.CypherQuery(graph_db, 'MATCH (patient {infected: "true"})--(room) WHERE patient.infected = "true" return room.name')

rooms = dict()

for record in query.stream() :

	if record[0] in rooms :
		rooms[record[0]] += 1
	else :
		rooms[record[0]] = 1


	print(record[0])

print("Infection Source: " + repr(max(rooms, key=rooms.get)))
