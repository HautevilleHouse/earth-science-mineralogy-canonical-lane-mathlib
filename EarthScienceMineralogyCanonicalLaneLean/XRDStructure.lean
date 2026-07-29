import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure XRDStructurePackage where
  xrdPattern : String
  braggAngles : List Float
  intensityPeaks : List Float
  latticeSpacingCalculated : Prop
  preferredOrientationCorrected : Prop

structure XRDStructureEvidence (X : XRDStructurePackage) where
  braggAnglesClosed : X.braggAngles.length > 0
  intensityPeaksClosed : X.intensityPeaks.length > 0
  latticeSpacingCalculatedClosed : X.latticeSpacingCalculated

structure XRDStructureClosed (X : XRDStructurePackage) : Prop where
  braggAnglesNonempty : X.braggAngles.length > 0
  intensityPeaksNonempty : X.intensityPeaks.length > 0

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse