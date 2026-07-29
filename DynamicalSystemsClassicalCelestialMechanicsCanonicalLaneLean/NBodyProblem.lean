import canonicalLaneMathlib.NBodyProblem

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure NBodyPackage where
  numBodies : Nat
  masses : Vector ℝ numBodies
  positions : Vector (Vector ℝ 3) numBodies
  velocities : Vector (Vector ℝ 3) numBodies
  gravitationalConstant : ℝ
  equationsOfMotion : Prop
  conservedQuantities : Prop

structure NBodyEvidence (N : NBodyPackage) where
  equationsOfMotionClosed : N.equationsOfMotion
  conservedQuantitiesClosed : N.conservedQuantities

def NBodyClosed (N : NBodyPackage) : Prop :=
  N.equationsOfMotion ∧ N.conservedQuantities

theorem nbody_closed_from_evidence (N : NBodyPackage) (E : NBodyEvidence N) :
    NBodyClosed N := by
  exact And.intro E.equationsOfMotionClosed E.conservedQuantitiesClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse