classDiagram
direction BT
class countries {
   bigint population
   varchar(50) country_name
}
class discovers {
   varchar(50) country_name
   varchar(50) disease_code
   date discovered
}
class disease_types {
   varchar(140) description
   integer disease_type_id
}
class diseases {
   varchar(50) disease_code
   varchar(20) pathogen
   varchar(140) description
   integer disease_type
   integer disease_id
}
class doctors {
   varchar(20) degree
   varchar(60) email
}
class public_servants {
   varchar(50) department
   varchar(60) email
}
class records {
   varchar(60) email
   varchar(50) country_name
   varchar(50) disease_code
}
class specializes {
   integer specialize_disease_id
   varchar(60) email
}
class users {
   varchar(30) user_name
   varchar(40) surname
   integer salary
   varchar(20) phone
   varchar(50) country
   varchar(60) email
}

discovers  -->  countries : country_name
discovers  -->  diseases : disease_code
diseases  -->  disease_types : disease_type:disease_type_id
doctors  -->  users : email
public_servants  -->  users : email
records  -->  countries : country_name
records  -->  diseases : disease_code
records  -->  public_servants : email
specializes  -->  disease_types : specialize_disease_id:disease_type_id
specializes  -->  doctors : email
users  -->  countries : country:country_name
