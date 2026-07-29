import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure MineralPropertyPackage where
  hardness : Type u
  density : Type v
  refractiveIndex : Type w
  cleavage : Prop
  fracture : Prop
  opticalProperties : Prop

structure MineralPropertyEvidence (P : MineralPropertyPackage) where
  hardnessClosed : P.hardness
  densityClosed : P.density
  refractiveIndexClosed : P.refractiveIndex
  cleavageClosed : P.cleavage
  fractureClosed : P.fracture
  opticalPropertiesClosed : P.opticalProperties

def MineralPropertyClosed (P : MineralPropertyPackage) : Prop :=
  P.hardness ∧ P.density ∧ P.refractiveIndex ∧ P.cleavage ∧ P.fracture ∧ P.opticalProperties

theorem mineral_property_closed_from_evidence (P : MineralPropertyPackage) (E : MineralPropertyEvidence P) :
    MineralPropertyClosed P := by
  exact And.intro E.hardnessClosed (And.intro E.densityClosed (And.intro E.refractiveIndexClosed (And.intro E.cleavageClosed (And.intro E.fractureClosed E.opticalPropertiesClosed))))

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse