import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundaries : Prop
  stabilityFields : Prop
  invariantPoints : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  stabilityFieldsClosed : P.stabilityFields
  invariantPointsClosed : P.invariantPoints

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.stabilityFields ∧ P.invariantPoints

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.stabilityFieldsClosed E.invariantPointsClosed)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse