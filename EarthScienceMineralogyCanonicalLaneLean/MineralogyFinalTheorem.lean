import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

def ConstrainedMineralogyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mineralogy_endgame (A : AdmissibleClass) :
    ConstrainedMineralogyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse