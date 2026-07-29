import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure NBodyRegularizationPackage where
  numberBodies : ℕ
  collisionTimes : List ℝ
  regularizationMap : Type
  blowUpContinuation : Prop
  regularizedEquations : Prop

def NBodyRegularizationClosed (N : NBodyRegularizationPackage) : Prop :=
  N.blowUpContinuation ∧ N.regularizedEquations

theorem n_body_regularization_closed (N : NBodyRegularizationPackage) (h1 : N.blowUpContinuation) (h2 : N.regularizedEquations) :
  NBodyRegularizationClosed N :=
by
  exact And.intro h1 h2

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
