import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure MineralogicalObject where
  specimenType : Type
  crystalSystem : Prop
  chemicalFormula : String
  unitCellParameters : Prop
  conclusion : crystalSystem

structure AdmissibleClass where
  object : MineralogicalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse