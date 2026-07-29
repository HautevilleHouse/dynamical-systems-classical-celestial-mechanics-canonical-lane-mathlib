import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean.HamiltonianStructure

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure SymplecticIntegrator (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) where
  timeStep : ℝ
  numSteps : ℕ
  symplecticMap : (Vector ℝ (6*n)) → (Vector ℝ (6*n))
  preservesPoissonBracket : Prop
  order : ℕ

structure SymplecticIntegratorEvidence (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (S : SymplecticIntegrator n P H) where
  timeStepPositive : S.timeStep > 0
  symplecticMapDefined : True
  preservesPoissonBracketClosed : S.preservesPoissonBracket

def SymplecticIntegratorClosed (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (S : SymplecticIntegrator n P H) : Prop :=
  S.preservesPoissonBracket

theorem symplectic_integrator_closed_from_evidence (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (S : SymplecticIntegrator n P H) (E : SymplecticIntegratorEvidence n P H S) : SymplecticIntegratorClosed n P H S :=
  E.preservesPoissonBracketClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse