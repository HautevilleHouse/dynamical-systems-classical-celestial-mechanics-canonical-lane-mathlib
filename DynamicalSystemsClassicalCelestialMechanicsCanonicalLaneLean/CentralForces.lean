import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure CentralForcesPackage where
  centerOfMass : ℝ × ℝ × ℝ
  forceLaw : ℝ → ℝ → ℝ
  orbitShape : Type
  angularMomentumConserved : Prop
  eccentricityVector : Type

structure CentralForcesEvidence (C : CentralForcesPackage) where
  forceLawClosed : ∀ r : ℝ, C.forceLaw 0 r = 0
  angularMomentumConservedClosed : C.angularMomentumConserved

def CentralForcesClosed (C : CentralForcesPackage) : Prop :=
  C.angularMomentumConserved

theorem central_forces_closed_from_evidence (C : CentralForcesPackage) (E : CentralForcesEvidence C) :
  CentralForcesClosed C :=
by
  exact E.angularMomentumConservedClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
