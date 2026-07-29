import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure CrystalSystemPackage where
  systemName : String
  symmetry : String
  latticeParameters : Prop
  unitCellVolume : Prop

structure CrystalSystemEvidence (C : CrystalSystemPackage) where
  latticeParametersClosed : C.latticeParameters
  unitCellVolumeClosed : C.unitCellVolume

def CrystalSystemClosed (C : CrystalSystemPackage) : Prop :=
  C.latticeParameters ∧ C.unitCellVolume

theorem crystal_system_closed_from_evidence (C : CrystalSystemPackage) (E : CrystalSystemEvidence C) :
    CrystalSystemClosed C := by
  exact And.intro E.latticeParametersClosed E.unitCellVolumeClosed

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
