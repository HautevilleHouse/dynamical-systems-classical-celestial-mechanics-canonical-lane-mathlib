import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure NBodiesPhaseSpace (n : Nat) where
  masses : Vector ℝ n
  positions : Vector (Vector ℝ 3) n
  momenta : Vector (Vector ℝ 3) n
  time : ℝ

structure NBodiesPhaseSpaceEvidence (n : Nat) (P : NBodiesPhaseSpace n) where
  massesPositive : ∀ i, P.masses i > 0
  positionsDefined : True
  momentaDefined : True
  timeReal : True

def NBodiesPhaseSpaceClosed (n : Nat) (P : NBodiesPhaseSpace n) : Prop :=
  ∀ i, P.masses i > 0

theorem n_bodies_phase_space_closed_from_evidence (n : Nat) (P : NBodiesPhaseSpace n) (E : NBodiesPhaseSpaceEvidence n P) : NBodiesPhaseSpaceClosed n P :=
  E.massesPositive

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse