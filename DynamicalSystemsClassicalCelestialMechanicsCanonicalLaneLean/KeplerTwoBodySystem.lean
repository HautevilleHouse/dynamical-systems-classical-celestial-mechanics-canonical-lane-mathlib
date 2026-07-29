import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean.IntegralOfMotion

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure KeplerTwoBodySystem where
  reducedMass : ℝ
  gravitationalParameter : ℝ
  eccentricity : ℝ
  period : ℝ
  semiMajorAxis : ℝ
  conservedEnergy : Prop
  conservedAngularMomentum : Prop
  orbitPlaneConstant : Prop

structure KeplerTwoBodySystemEvidence (K : KeplerTwoBodySystem) where
  reducedMassPositive : K.reducedMass > 0
  gravitationalParameterPositive : K.gravitationalParameter > 0
  eccentricityBetweenZeroAndOne : 0 ≤ K.eccentricity ∧ K.eccentricity < 1
  periodPositive : K.period > 0
  semiMajorAxisPositive : K.semiMajorAxis > 0
  conservedEnergyClosed : K.conservedEnergy
  conservedAngularMomentumClosed : K.conservedAngularMomentum
  orbitPlaneConstantClosed : K.orbitPlaneConstant

def KeplerTwoBodySystemClosed (K : KeplerTwoBodySystem) : Prop :=
  K.conservedEnergy ∧ K.conservedAngularMomentum ∧ K.orbitPlaneConstant

theorem kepler_two_body_system_closed_from_evidence (K : KeplerTwoBodySystem) (E : KeplerTwoBodySystemEvidence K) : KeplerTwoBodySystemClosed K :=
  And.intro E.conservedEnergyClosed (And.intro E.conservedAngularMomentumClosed E.orbitPlaneConstantClosed)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse