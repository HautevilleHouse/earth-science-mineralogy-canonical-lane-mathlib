import EarthScienceMineralogyCanonicalLaneLean.PhaseDiagramStability

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure ThermodynamicPropertyPackage {C : CrystalSystem} {P : PhaseDiagramPackage C} where
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  heatCapacity : Prop
  molarVolume : Prop

structure ThermodynamicPropertyEvidence {C : CrystalSystem} {P : PhaseDiagramPackage C} (T : ThermodynamicPropertyPackage C P) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  heatCapacityClosed : T.heatCapacity
  molarVolumeClosed : T.molarVolume

def ThermodynamicPropertyClosed {C : CrystalSystem} {P : PhaseDiagramPackage C} (T : ThermodynamicPropertyPackage C P) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.heatCapacity ∧ T.molarVolume

theorem thermodynamic_property_closed_from_evidence {C : CrystalSystem} {P : PhaseDiagramPackage C} (T : ThermodynamicPropertyPackage C P) (E : ThermodynamicPropertyEvidence T) : ThermodynamicPropertyClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed
        (And.intro E.heatCapacityClosed E.molarVolumeClosed)))

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
