import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

structure CrystalSystem where
  name : String
  symmetryOperations : List String
  bravaisLattice : Prop
  unitCellParameters : List (String × Float)
  systematicAbsences : Prop
  bravaisLatticeTerm : bravaisLattice
  systematicAbsencesTerm : systematicAbsences

structure CrystalStructureEvidence (C : CrystalSystem) where
  bravaisLatticeClosed : C.bravaisLattice
  systematicAbsencesClosed : C.systematicAbsences

def CrystalStructureClosed (C : CrystalSystem) : Prop :=
  C.bravaisLattice ∧ C.systematicAbsences

theorem crystal_structure_closed_from_evidence
    (C : CrystalSystem) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed E.systematicAbsencesClosed

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse