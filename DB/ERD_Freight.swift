@startuml
hide circle
skinparam linetype ortho
entity "Freights" as Fr {
* Date+Index : text <<PK>>
--
* Type : text
Date : text
Index : text
Value : Number
isOceanFreight : text
}
entity "OceanFreight" as OcFr {
* Date+Index : text <<FK>>
--
* Date : text
Index : text
Value : Number
}
entity "AirFreight" as AiFr {
* Date+Index : text <<FK>>
--
* Date : text
Index : text
Value : Number
}
Fr -- OcFr
Fr -- AiFr

GeneralizationSet ..(Fr, AiFr)
(Fr, OcFr) .. GeneralizationSet

class GeneralizationSet {
  isOceanFreight = true
}

@enduml
@startuml
hide circle
skinparam linetype ortho
entity "Freights" as Fr {
* Date+Index : text <<PK>>
--
* Type : text
Date : text
Index : text
Value : Number
isOceanFreight : text
}
entity "OceanFreight" as OcFr {
* Date+Index : text <<FK>>
--
* Date : text
Index : text
Value : Number
}
entity "AirFreight" as AiFr {
* Date+Index : text <<FK>>
--
* Date : text
Index : text
Value : Number
}
Fr -- OcFr
Fr -- AiFr

GeneralizationSet ..(Fr, AiFr)
(Fr, OcFr) .. GeneralizationSet

class GeneralizationSet {
  isOceanFreight = true
}

@enduml
