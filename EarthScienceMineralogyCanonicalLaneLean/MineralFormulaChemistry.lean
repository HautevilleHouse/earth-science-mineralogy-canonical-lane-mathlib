import EarthScienceMineralogyCanonicalLaneLean.CrystalSystemClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure ChemicalFormula where
  elements : List String
  stoichiometry : List Nat
  chargeBalance : Prop
  valenceStates : Prop

structure MineralFormulaPackage {C : CrystalSystem} where
  idealFormula : ChemicalFormula
  substitutionSites : Prop
  solidSolutionRange : Prop
  formulaClosed : Prop

structure MineralFormulaEvidence {C : CrystalSystem} (M : MineralFormulaPackage C) where
  idealFormulaClosed : M.idealFormula.chargeBalance ∧ M.idealFormula.valenceStates
  substitutionSitesClosed : M.substitutionSites
  solidSolutionRangeClosed : M.solidSolutionRange
  formulaClosedClosed : M.formulaClosed

def MineralFormulaClosed {C : CrystalSystem} (M : MineralFormulaPackage C) : Prop :=
  (M.idealFormula.chargeBalance ∧ M.idealFormula.valenceStates) ∧ M.substitutionSites ∧ M.solidSolutionRange ∧ M.formulaClosed

theorem mineral_formula_closed_from_evidence {C : CrystalSystem} (M : MineralFormulaPackage C) (E : MineralFormulaEvidence M) : MineralFormulaClosed M := by
  exact And.intro E.idealFormulaClosed (And.intro E.substitutionSitesClosed (And.intro E.solidSolutionRangeClosed E.formulaClosedClosed))

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
