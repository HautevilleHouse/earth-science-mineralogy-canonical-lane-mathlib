import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure MineralSpecimen where
  composition : String
  crystalSystem : String
  hardness : Float
  cleavage : Prop

structure MineralAdmittedObject where
  specimen : MineralSpecimen
  identified : Prop
  classified : Prop
  conclusion : classified

structure AdmissibleClass where
  object : MineralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MineralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
