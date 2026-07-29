import EarthScienceMineralogyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure CrystalSystem where
  carrier : Type u
  symmetryGroup : Type v
  bravaisLattice : Type w
  unitCell : Prop
  pointGroup : Prop
  spaceGroup : Prop

structure CrystalSystemEvidence (C : CrystalSystem) where
  unitCellClosed : C.unitCell
  pointGroupClosed : C.pointGroup
  spaceGroupClosed : C.spaceGroup

def CrystalSystemClosed (C : CrystalSystem) : Prop :=
  C.unitCell ∧ C.pointGroup ∧ C.spaceGroup

theorem crystal_system_closed_from_evidence (C : CrystalSystem) (E : CrystalSystemEvidence C) : CrystalSystemClosed C := by
  exact And.intro E.unitCellClosed (And.intro E.pointGroupClosed E.spaceGroupClosed)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse
