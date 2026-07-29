import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure ExchangeReaction where
  reactants : List (String × ℕ)
  products : List (String × ℕ)
  equilibriumConstant : ℝ → ℝ → ℝ

structure Thermometer (R : ExchangeReaction) where
  temperatureCalibration : ℝ → ℝ
  pressureCorrection : ℝ → ℝ → ℝ
  uncertainty : ℝ

structure Barometer (R : ExchangeReaction) where
  pressureCalibration : ℝ → ℝ
  temperatureCorrection : ℝ → ℝ → ℝ
  uncertainty : ℝ

structure CalibrationEvidence (R : ExchangeReaction) (T : Thermometer R) (B : Barometer R) where
  temperatureRangeValid : ∀ P, T.temperatureCalibration P > 0
  pressureRangeValid : ∀ T', B.pressureCalibration T' > 0
  crossConsistency : (∀ (t : ℝ), T.temperatureCalibration (B.pressureCalibration t) = t) → Prop

def CalibrationClosed (R : ExchangeReaction) (T : Thermometer R) (B : Barometer R) : Prop :=
  (∀ P, T.temperatureCalibration P > 0) ∧ (∀ T', B.pressureCalibration T' > 0)

theorem calibration_closed_from_evidence (R : ExchangeReaction) (T : Thermometer R) (B : Barometer R)
  (E : CalibrationEvidence R T B) : CalibrationClosed R T B :=
  And.intro E.temperatureRangeValid E.pressureRangeValid

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse