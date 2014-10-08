create

(_1:Patient {name: "Justin", admitted: "1398973737", discharged: "1401652137"}),
(_2:Patient {name: "Anthony", admitted: "1398973737", discharged: "1401652137"}),
(_3:Patient {name: "Mike", admitted: "1398973737", discharged: "1401652137"}),
(_4:Patient {name: "Alice", admitted: "", discharged: ""}),
(_5:Patient {name: "Bob", admitted: "1398973737", discharged: ""}),
(_6:Patient {name: "Chris", admitted: "1398973737", discharged: "1401652137"}),
(_7:Patient {name: "Dave", admitted: "1398973737", discharged: "1401652137"}),

(_8:Doctor {name: "Deible", specialty: "Scope Creep"}),
(_9:Doctor {name: "Joyce", specialty: "Radiology"}),
(_10:Doctor {name: "Weird", specialty: "Internal Medicine"}),
(_11:Doctor {name: "Dre", specialty: "Infectious Disease"}),

(_12:Nurse {name: "Karen"}),
(_13:Nurse {name: "Jess"}),
(_14:Nurse {name: "Donna"}),

(_14:Room {name: "Room 123"}),
(_15:Room {name: "Room 321"}),
(_16:Room {name: "Room 111"}),
(_17:Room {name: "Room 101"}),
(_32:Room {name: "MRI Room"}),

(_18:Housekeeper {name: "Morgan"}),
(_19:Housekeeper {name: "Jensen"}),
(_20:Housekeeper {name: "Lancia"}),

(_21:RoomServiced {type: "Empty Trash", serviceDate: "1398973737"}),
(_33:RoomServiced {type: "Empty Trash", serviceDate: "1398973737"}),
(_22:RoomServiced {type: "Clean Bathroom", serviceDate: "1398973737"}),
(_23:RoomServiced {type: "Change Linen", serviceDate: "1398973737"}),
(_24:RoomServiced {type: "Clean Bathroom", serviceDate: "1398973737"}),

(_25:ImagingStudy {type: "CT", subspecialty: "CHEST", studyDate: "1398973737"}),
(_26:ImagingStudy {type: "CT", subspecialty: "SPINE", studyDate: "1398973737"}),
(_27:ImagingStudy {type: "DX", subspecialty: "HEAD", studyDate: "1398973737"}),
(_28:ImagingStudy {type: "MR", subspecialty: "ABDOMEN", studyDate: "1398973737"}),
(_29:ImagingStudy {type: "US", subspecialty: "LEG", studyDate: "1398973737"}),

(_30:Infection {name: "MRSA", firstDetected: "1400350723"}),
(_31:Infection {name: "Legionella", firstDetected: "1401214723"}),

_14-[:RECEIVED_SERVICE]->_21
_15-[:RECEIVED_SERVICE]->_22
_16-[:RECEIVED_SERVICE]->_23
_17-[:RECEIVED_SERVICE]->_24
_32-[:RECEIVED_SERVICE]->_33

_18-[:COMPLETED_SERVICE]->_21,
_18-[:COMPLETED_SERVICE]->_33,
_18-[:COMPLETED_SERVICE]->_22,
_19-[:COMPLETED_SERVICE]->_23,
_20-[:COMPLETED_SERVICE]->_24,

_1-[:STAYED_IN {startDate: "1398973737", endDate: "1401652137"}]->_14,
_2-[:STAYED_IN {startDate: "1398973737", endDate: "1401652137"}]->_14,
_3-[:STAYED_IN {startDate: "1398973737", endDate: "1401652137"}]->_15,
_5-[:STAYED_IN {startDate: "1398973737", endDate: "1401652137"}]->_16,
_6-[:STAYED_IN {startDate: "1398973737", endDate: "1401652137"}]->_17,
_7-[:STAYED_IN {startDate: "1398973737", endDate: "1401652137"}]->_18,

_28-[:PERFORMED_IN]->_32,
_25-[:PERFORMED_IN]->_32,
_26-[:PERFORMED_IN]->_32,

_1-[:RECEIVED_STUDY]->_25,
_2-[:RECEIVED_STUDY]->_26,
_3-[:RECEIVED_STUDY]->_27,
_3-[:RECEIVED_STUDY]->_28,
_4-[:RECEIVED_STUDY]->_29,

_3-[:INFECTED_WITH]->_30,

_11-[:ORDERED_STUDY]->_25,
_11-[:ORDERED_STUDY]->_26,
_11-[:ORDERED_STUDY]->_27,
_10-[:ORDERED_STUDY]->_28,
_9-[:ORDERED_STUDY]->_28,
