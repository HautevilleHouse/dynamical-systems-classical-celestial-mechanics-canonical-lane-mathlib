import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure IntegrableSystemsPackage where
  hamiltonianFunction : Type
  actionAngleVariables : Type
  involutiveFirstIntegrals : List (Type)
  integrabilityCondition : Prop

def IntegrableSystemsClosed (I : IntegrableSystemsPackage) : Prop :=
  I.integrabilityCondition

theorem integrable_systems_closed (I : IntegrableSystemsPackage) (h : I.integrabilityCondition) :
  IntegrableSystemsClosed I :=
by
  exact h

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
