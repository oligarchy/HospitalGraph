// this is step 1, it will return all nodes who are infected with MRSA
MATCH 
	infect = (patient)-[r:INFECTED_WITH]-(infection {name: "MRSA"})
OPTIONAL MATCH 
	stays = (patient)-[s:STAYED_IN]-(room)-[rs:RECEIVED_SERVICE]-()-[cs:COMPLETED_SERVICE]-()
OPTIONAL MATCH 
	studies = (patient)-[rst:RECEIVED_STUDY]-(study)-[per:PERFORMED_IN]-(room)
RETURN *
 

MATCH 
	infect = (infection {name: "MRSA"})-[r:INFECTED_WITH]-(patient)-[]-()
OPTIONAL MATCH 
	stays = (service)-[cs:COMPLETED_SERVICE]-(housekeep)
OPTIONAL MATCH
	studies = (study)-[per:PERFORMED_IN]-(room)


// step 1 - this will show the whole graph
match (n)--() return n


// step 2 - this will show any nodes connected to anyone infected
MATCH 
	infect = (patient {infected: "true"})-[]-()-[]-()-[]-()
WHERE
	patient.infected = "true" 

return *


// step 3 - this only shows direct connections with infected patients
MATCH 
	infect = (patient {infected: "true"})-[]-()
WHERE
	patient.infected = "true" 
return *


// step 4 - this shows the vertex with the highest degree connected to the infected patients
// effectively naming our infection source/reservoir
MATCH (patient {infected: "true"})--(room) WHERE patient.infected = "true" return room.name, count(*) as connect order by connect desc limit 1