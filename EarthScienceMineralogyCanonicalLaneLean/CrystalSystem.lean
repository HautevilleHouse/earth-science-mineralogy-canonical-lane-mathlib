import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure CrystalSystemPackage where
  bravaisLattice : Type u
  symmetryGroup : Type v
  unitCell : Type w
  latticeParameters : Prop
  atomicPositions : Prop
  symmetryOperations : Prop

structure CrystalSystemEvidence (C : CrystalSystemPackage) where
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions
  symmetryOperationsClosed : C.symmetryOperations

def CrystalSystemClosed (C : CrystalSystemPackage) : Prop :=
  C.latticeParameters ∧ C.atomicPositions ∧ C.symmetryOperations

theorem crystal_system_closed_from_evidence (C : CrystalSystemPackage) (E : CrystalSystemEvidence C) :
    CrystalSystemClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.atomicPositionsClosed E.symmetryOperationsClosed)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse