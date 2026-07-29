import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure ThermodynamicPhase where
  phaseName : String
  temperatureRange : Set ℝ
  pressureRange : Set ℝ
  gibbsFreeEnergy : ℝ → ℝ → ℝ
  molarVolume : ℝ → ℝ → ℝ

structure PhaseBoundary (P Q : ThermodynamicPhase) where
  equilibriumCurve : ℝ → ℝ
  clapeyronSlope : ℝ
  invariantPoint : ℝ × ℝ

structure PhaseEquilibriumEvidence (P Q : ThermodynamicPhase) (B : PhaseBoundary P Q) where
  boundaryDerived : B.equilibriumCurve 0 = 0
  slopePositive : B.clapeyronSlope > 0

def PhaseEquilibriumClosed (P Q : ThermodynamicPhase) (B : PhaseBoundary P Q) : Prop :=
  B.equilibriumCurve 0 = 0 ∧ B.clapeyronSlope > 0

theorem phase_equilibrium_closed_from_evidence (P Q : ThermodynamicPhase) (B : PhaseBoundary P Q)
  (E : PhaseEquilibriumEvidence P Q B) : PhaseEquilibriumClosed P Q B :=
  And.intro E.boundaryDerived E.slopePositive

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse