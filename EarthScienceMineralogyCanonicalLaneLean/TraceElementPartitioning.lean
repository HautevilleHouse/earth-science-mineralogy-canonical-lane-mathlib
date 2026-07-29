import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure TraceElement where
  symbol : String
  ionicRadius : ℝ
  charge : ℤ

structure MineralPhase where
  phaseName : String
  latticeSites : List (String × ℝ)

structure PartitionCoefficient (T : TraceElement) (M : MineralPhase) where
  D : ℝ → ℝ → ℝ  -- temperature, pressure to coefficient
  latticeStrainModel : ℝ → ℝ → ℝ
  sitePreference : String

structure PartitioningEvidence (T : TraceElement) (M : MineralPhase) (K : PartitionCoefficient T M) where
  coefficientPositive : ∀ T' P, K.D T' P > 0
  strainModelValid : ∀ r, K.latticeStrainModel r ≥ 0

def PartitioningClosed (T : TraceElement) (M : MineralPhase) (K : PartitionCoefficient T M) : Prop :=
  (∀ T' P, K.D T' P > 0) ∧ (∀ r, K.latticeStrainModel r ≥ 0)

theorem partitioning_closed_from_evidence (T : TraceElement) (M : MineralPhase) (K : PartitionCoefficient T M)
  (E : PartitioningEvidence T M K) : PartitioningClosed T M K :=
  And.intro E.coefficientPositive E.strainModelValid

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse