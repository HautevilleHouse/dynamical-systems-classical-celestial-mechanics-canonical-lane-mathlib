import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure KeplerProblemPackage where
  reducedMass : ℝ
  gravitationalParameter : ℝ
  semimajorAxis : ℝ
  eccentricity : ℝ
  orbitalPeriod : ℝ
  meanMotion : ℝ
  energyEquation : Prop
  arealVelocity : Prop

structure KeplerProblemEvidence (K : KeplerProblemPackage) where
  energyEquationClosed : K.energyEquation
  arealVelocityClosed : K.arealVelocity

def KeplerProblemClosed (K : KeplerProblemPackage) : Prop :=
  K.energyEquation ∧ K.arealVelocity

theorem kepler_problem_closed_from_evidence (K : KeplerProblemPackage) (E : KeplerProblemEvidence K) :
  KeplerProblemClosed K :=
by
  exact And.intro E.energyEquationClosed E.arealVelocityClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
