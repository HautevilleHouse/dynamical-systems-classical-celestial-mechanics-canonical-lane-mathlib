import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean.HamiltonianStructure

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure IntegralOfMotion (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) where
  functionOnPhaseSpace : Vector ℝ (6*n) → ℝ
  conservedQuantity : Prop
  name : String

structure IntegralOfMotionEvidence (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (I : IntegralOfMotion n P H) where
  conservedClosed : I.conservedQuantity

def IntegralOfMotionClosed (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (I : IntegralOfMotion n P H) : Prop :=
  I.conservedQuantity

theorem integral_of_motion_closed_from_evidence (n : Nat) (P : NBodiesPhaseSpace n) (H : HamiltonianStructure n P) (I : IntegralOfMotion n P H) (E : IntegralOfMotionEvidence n P H I) : IntegralOfMotionClosed n P H I :=
  E.conservedClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse