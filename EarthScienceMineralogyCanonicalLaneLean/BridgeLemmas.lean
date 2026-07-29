import EarthScienceMineralogyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceMineralogyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MineralogyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceMineralogyCanonicalLaneLean
end HautevilleHouse