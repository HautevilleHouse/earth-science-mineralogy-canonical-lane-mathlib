import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure MineralFormulaPackage where
  chemicalFormula : String
  elementComposition : Type u
  stoichiometry : Prop
  chargeBalance : Prop
  solidSolutionRange : Prop

structure MineralFormulaEvidence (F : MineralFormulaPackage) where
  stoichiometryClosed : F.stoichiometry
  chargeBalanceClosed : F.chargeBalance
  solidSolutionRangeClosed : F.solidSolutionRange

def MineralFormulaClosed (F : MineralFormulaPackage) : Prop :=
  F.stoichiometry ∧ F.chargeBalance ∧ F.solidSolutionRange

theorem mineral_formula_closed_from_evidence (F : MineralFormulaPackage) (E : MineralFormulaEvidence F) :
    MineralFormulaClosed F := by
  exact And.intro E.stoichiometryClosed (And.intro E.chargeBalanceClosed E.solidSolutionRangeClosed)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse