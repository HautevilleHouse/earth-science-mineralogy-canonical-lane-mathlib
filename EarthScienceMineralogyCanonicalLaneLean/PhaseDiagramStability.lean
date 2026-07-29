import EarthScienceMineralogyCanonicalLaneLean.CrystalSystemClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystalSystem} where
  pressureRange : Prop
  temperatureRange : Prop
  phaseBoundaries : Prop
  triplePoints : Prop
  stabilityFields : Prop

structure PhaseDiagramEvidence {C : CrystalSystem} (P : PhaseDiagramPackage C) where
  pressureRangeClosed : P.pressureRange
  temperatureRangeClosed : P.temperatureRange
  phaseBoundariesClosed : P.phaseBoundaries
  triplePointsClosed : P.triplePoints
  stabilityFieldsClosed : P.stabilityFields

def PhaseDiagramClosed {C : CrystalSystem} (P : PhaseDiagramPackage C) : Prop :=
  P.pressureRange ∧ P.temperatureRange ∧ P.phaseBoundaries ∧ P.triplePoints ∧ P.stabilityFields

theorem phase_diagram_closed_from_evidence {C : CrystalSystem} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.pressureRangeClosed
    (And.intro E.temperatureRangeClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.triplePointsClosed E.stabilityFieldsClosed)))

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
