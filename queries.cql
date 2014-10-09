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


RETURN *


MATCH 
	infect = (patient {infected: "true"})-[]-()-[]-()-[]-()
WHERE
	patient.infected = "true" 

return *