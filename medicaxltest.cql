create 

(_6:DRUG_CLASS {name:"Bronchodilators"}), 
(_7:DRUG_CLASS {name:"Corticosteroids"}), 
(_8:DRUG_CLASS {name:"Xanthine"}), 

(_9:DRUG {name:"Salbutamol"}), 
(_10:DRUG {name:"Terbutaline"}), 
(_11:DRUG {name:"Bambuterol"}), 
(_12:DRUG {name:"Formoterol"}), 
(_13:DRUG {name:"Salmeterol"}), 
(_14:DRUG {name:"Beclometasone"}), 
(_15:DRUG {name:"Budesonide"}), 
(_16:DRUG {name:"Ciclesonide"}), 
(_17:DRUG {name:"Fluticasone"}), 
(_18:DRUG {name:"Mometasone"}), 
(_19:DRUG {name:"Betametasone"}), 
(_20:DRUG {name:"Prednisolone"}), 
(_21:DRUG {name:"Dilatrane"}), 

(_22:ALLERGY {name:"Hypersensitivity to Betametasone"}), 

(_23:PATHOLOGY {name:"Asthma"}), 

(_24:SYMPTOM {name:"Wheezing"}), 
(_25:SYMPTOM {name:"Chest tightness"}), 
(_26:SYMPTOM {name:"Cough"}), 

(_27:DOCTOR {latitude:48.8573,longitude:2.35685,name:"Irving Matrix"}), 
(_28:DOCTOR {latitude:46.83144,longitude:-71.28454,name:"Jack McKee"}), 
(_29:DOCTOR {latitude:48.86982,longitude:2.32503,name:"Michaela Quinn"}), 

(_30:DOCTOR_SPECIALIZATION {name:"Physician"}), 
(_31:DOCTOR_SPECIALIZATION {name:"Angiologist"}),

_6-[:CURES {age_max:60,age_min:18,indication:"Adult asthma"}]->_23, 
_7-[:CURES {age_max:18,age_min:5,indication:"Child asthma"}]->_23, 
_8-[:CURES {age_max:60,age_min:18,indication:"Adult asthma"}]->_23, 

_9-[:BELONGS_TO_CLASS]->_6, 
_10-[:BELONGS_TO_CLASS]->_6, 
_11-[:BELONGS_TO_CLASS]->_6, 
_12-[:BELONGS_TO_CLASS]->_6, 
_13-[:BELONGS_TO_CLASS]->_6, 
_14-[:BELONGS_TO_CLASS]->_7, 
_15-[:BELONGS_TO_CLASS]->_7, 
_16-[:BELONGS_TO_CLASS]->_7, 
_17-[:BELONGS_TO_CLASS]->_7, 
_18-[:BELONGS_TO_CLASS]->_7, 
_19-[:BELONGS_TO_CLASS]->_6, 
_19-[:BELONGS_TO_CLASS]->_7,
 
_19-[:MAY_CAUSE_ALLERGY]->_22, 
_20-[:BELONGS_TO_CLASS]->_7, 
_21-[:BELONGS_TO_CLASS]->_8, 
_23-[:MAY_MANIFEST_SYMPTOMS]->_24, 
_23-[:MAY_MANIFEST_SYMPTOMS]->_25, 
_23-[:MAY_MANIFEST_SYMPTOMS]->_26, 
_27-[:SPECIALISES_IN]->_31,
_28-[:SPECIALISES_IN]->_31, 
_29-[:SPECIALISES_IN]->_30, 
_30-[:CAN_PRESCRIBE]->_7, 
_31-[:CAN_PRESCRIBE]->_6