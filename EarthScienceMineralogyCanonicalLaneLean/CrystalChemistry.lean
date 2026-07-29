import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure CrystalChemistryPackage where
  zEffective : Float
  ionicRadius : Float
  coordinationNumber : Nat
  bondValence : Float
  siteOccupancy : Float

structure CrystalChemistryEvidence (C : CrystalChemistryPackage) where
  zEffectiveClosed : C.zEffective > 0.0
  ionicRadiusClosed : C.ionicRadius > 0.0
  bondValenceClosed : C.bondValence > 0.0

structure CrystalChemistryClosed (C : CrystalChemistryPackage) : Prop where
  positiveZEffective : C.zEffective > 0.0
  positiveIonicRadius : C.ionicRadius > 0.0
  positiveBondValence : C.bondValence > 0.0

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse