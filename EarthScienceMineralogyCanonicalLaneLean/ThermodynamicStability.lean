import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure ThermodynamicStabilityPackage where
  gibbsFreeEnergy : Float
  enthalpy : Float
  entropy : Float
  temperature : Float
  pressure : Float
  stabilityCriterion : Prop

structure ThermodynamicStabilityEvidence (T : ThermodynamicStabilityPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy < 0.0
  entropyClosed : T.entropy > 0.0
  stabilityCriterionClosed : T.stabilityCriterion

structure ThermodynamicStabilityClosed (T : ThermodynamicStabilityPackage) : Prop where
  negativeGibbs : T.gibbsFreeEnergy < 0.0
  positiveEntropy : T.entropy > 0.0

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse