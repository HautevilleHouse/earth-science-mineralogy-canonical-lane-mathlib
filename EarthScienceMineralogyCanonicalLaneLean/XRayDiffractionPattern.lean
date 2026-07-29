import EarthScienceMineralogyCanonicalLaneLean.MineralFormulaChemistry

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure DiffractionPeak where
  twoTheta : ℝ
  intensity : ℝ
  hkl : ℕ × ℕ × ℕ

structure XRDPackage {C : CrystalSystem} {M : MineralFormulaPackage C} where
  wavelength : ℝ
  peaks : List DiffractionPeak
  braggLawSatisfied : Prop
  systematicAbsences : Prop

structure XRDEvidence {C : CrystalSystem} {M : MineralFormulaPackage C} (X : XRDPackage C M) where
  braggLawSatisfiedClosed : X.braggLawSatisfied
  systematicAbsencesClosed : X.systematicAbsences

def XRDClosed {C : CrystalSystem} {M : MineralFormulaPackage C} (X : XRDPackage C M) : Prop :=
  X.braggLawSatisfied ∧ X.systematicAbsences

theorem xrd_closed_from_evidence {C : CrystalSystem} {M : MineralFormulaPackage C} (X : XRDPackage C M) (E : XRDEvidence X) : XRDClosed X := by
  exact And.intro E.braggLawSatisfiedClosed E.systematicAbsencesClosed

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
