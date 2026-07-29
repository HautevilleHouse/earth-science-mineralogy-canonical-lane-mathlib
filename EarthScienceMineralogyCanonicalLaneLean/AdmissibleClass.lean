import EarthScienceMineralogyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure AdmissibleClass where
  object : MineralogyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MineralogyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse