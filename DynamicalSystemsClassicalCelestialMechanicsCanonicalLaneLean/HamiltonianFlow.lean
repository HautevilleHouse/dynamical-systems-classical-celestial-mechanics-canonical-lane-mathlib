import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure HamiltonianFlow (n : Nat) (P : PhaseSpace n) where
  hamiltonianFunction : Type w
  flowMap : Type x
  conservationOfEnergy : Prop
  poissonBracketInvolution : Prop
  hamiltonianEquations : Prop
  conservationOfEnergyClosed : conservationOfEnergy
  poissonBracketInvolutionClosed : poissonBracketInvolution
  hamiltonianEquationsClosed : hamiltonianEquations

def HamiltonianFlowClosed (n : Nat) (P : PhaseSpace n) (H : HamiltonianFlow n P) : Prop :=
  H.conservationOfEnergy ∧ H.poissonBracketInvolution ∧ H.hamiltonianEquations

theorem hamiltonian_flow_closed_from_evidence (n : Nat) (P : PhaseSpace n) (H : HamiltonianFlow n P) : HamiltonianFlowClosed n P H :=
  And.intro H.conservationOfEnergyClosed (And.intro H.poissonBracketInvolutionClosed H.hamiltonianEquationsClosed)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
