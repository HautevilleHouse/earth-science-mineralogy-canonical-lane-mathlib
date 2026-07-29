import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure MixingSite where
  cation : Type u
  siteOccupancy : Type v
  moleFraction : ℝ → ℝ

structure IdealMixingModel (S : MixingSite) where
  configurationalEntropy : ℝ → ℝ
  idealActivity : ℝ → ℝ

structure NonIdealMixingModel (S : MixingSite) where
  interactionParameter : ℝ
  excessGibbsEnergy : ℝ → ℝ
  regularSolutionParameter : ℝ

structure SolidSolutionEvidence (S : MixingSite) (I : IdealMixingModel S) (N : NonIdealMixingModel S) where
  entropyPositive : ∀ x, I.configurationalEntropy x ≥ 0
  interactionNonnegative : N.interactionParameter ≥ 0

def SolidSolutionClosed (S : MixingSite) (I : IdealMixingModel S) (N : NonIdealMixingModel S) : Prop :=
  (∀ x, I.configurationalEntropy x ≥ 0) ∧ N.interactionParameter ≥ 0

theorem solid_solution_closed_from_evidence (S : MixingSite) (I : IdealMixingModel S) (N : NonIdealMixingModel S)
  (E : SolidSolutionEvidence S I N) : SolidSolutionClosed S I N :=
  And.intro E.entropyPositive E.interactionNonnegative

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse