import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CelestialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse