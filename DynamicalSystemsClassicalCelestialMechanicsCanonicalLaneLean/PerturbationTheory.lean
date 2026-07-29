import canonicallaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Asymptotics

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure PerturbationTheoryPackage where
  smallParameter : ℕ
  unperturbedSystem : Type
  averagingMethod : Prop
  secularDrift : Prop
  stabilityEstimate : Prop

structure PerturbationTheoryEvidence (P : PerturbationTheoryPackage) where
  averagingMethodClosed : P.averagingMethod
  secularDriftClosed : P.secularDrift
  stabilityEstimateClosed : P.stabilityEstimate

def PerturbationTheoryClosed (P : PerturbationTheoryPackage) : Prop :=
  P.averagingMethod ∧ P.secularDrift ∧ P.stabilityEstimate

theorem perturbation_theory_closed_from_evidence (P : PerturbationTheoryPackage)
    (E : PerturbationTheoryEvidence P) : PerturbationTheoryClosed P := by
  exact And.intro E.averagingMethodClosed
    (And.intro E.secularDriftClosed E.stabilityEstimateClosed)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse