import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean.NBodiesPhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure HamiltonianStructure (n : Nat) (P : NBodiesPhaseSpace n) where
  hamiltonian : ℝ
  canonicalEquations : Prop
  poissonBracket : (Vector ℝ (6*n)) → (Vector ℝ (6*n)) → ℝ

structure HamiltonianStructureEvidence (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) where
  hamiltonianDefined : H.hamiltonian = (1/2) * (∑ i, P.momenta i • P.momenta i / P.masses i) - (∑ i j, (P.masses i * P.masses j) / (‖P.positions i - P.positions j‖))
  canonicalEquationsClosed : H.canonicalEquations
  poissonBracketClosed : ∀ f g, H.poissonBracket f g = (∑ i, (∂ f/∂ (P.positions i)) • (∂ g/∂ (P.momenta i)) - (∂ f/∂ (P.momenta i)) • (∂ g/∂ (P.positions i)))

def HamiltonianStructureClosed (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) : Prop :=
  H.canonicalEquations ∧ (∀ f g, H.poissonBracket f g = (∑ i, (∂ f/∂ (P.positions i)) • (∂ g/∂ (P.momenta i)) - (∂ f/∂ (P.momenta i)) • (∂ g/∂ (P.positions i))))

theorem hamiltonian_structure_closed_from_evidence (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (E : HamiltonianStructureEvidence n P H) : HamiltonianStructureClosed n P H :=
  And.intro E.canonicalEquationsClosed (by
    intro f g
    exact E.poissonBracketClosed f g)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse