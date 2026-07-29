import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure Geothermobarometry (M : Type u) where
  pressureEstimate : Float
  temperatureEstimate : Float
  equilibriumAssumption : Prop
  thermodynamicModelCalibrated : Prop
  equilibriumAssumptionTerm : equilibriumAssumption
  thermodynamicModelCalibratedTerm : thermodynamicModelCalibrated

structure GeothermobarometryEvidence {M : Type u}
    (G : Geothermobarometry M) where
  equilibriumAssumptionClosed : G.equilibriumAssumption
  thermodynamicModelCalibratedClosed : G.thermodynamicModelCalibrated

def GeothermobarometryClosed {M : Type u} (G : Geothermobarometry M) : Prop :=
  G.equilibriumAssumption ∧ G.thermodynamicModelCalibrated

theorem geothermobarometry_closed_from_evidence
    {M : Type u} (G : Geothermobarometry M) (E : GeothermobarometryEvidence G) :
    GeothermobarometryClosed G := by
  exact And.intro E.equilibriumAssumptionClosed E.thermodynamicModelCalibratedClosed

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse