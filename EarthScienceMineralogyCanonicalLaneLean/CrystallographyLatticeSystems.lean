import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure LatticeSystem where
  crystalSystem : Type u
  bravaisLattice : Type v
  unitCellParameters : Prop
  symmetryGroup : Type w
  centeringType : Type x

structure PrimitiveLattice (L : LatticeSystem) where
  vectors : (ℝ × ℝ × ℝ)
  angles : (ℝ × ℝ × ℝ)
  volume : ℝ

structure CenteredLattice (L : LatticeSystem) where
  base : PrimitiveLattice L
  additionalPoints : List (ℝ × ℝ × ℝ)

def bravaisClass (L : LatticeSystem) : Prop :=
  L.unitCellParameters

structure LatticeEvidence (L : LatticeSystem) where
  bravaisClassClosed : bravaisClass L
  symmetryGroupClosed : Nonempty (L.symmetryGroup)
  centeringTypeClosed : Nonempty (L.centeringType)

def LatticeClosed (L : LatticeSystem) : Prop :=
  bravaisClass L ∧ Nonempty (L.symmetryGroup) ∧ Nonempty (L.centeringType)

theorem lattice_closed_from_evidence (L : LatticeSystem) (E : LatticeEvidence L) : LatticeClosed L :=
  And.intro E.bravaisClassClosed (And.intro E.symmetryGroupClosed E.centeringTypeClosed)

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse