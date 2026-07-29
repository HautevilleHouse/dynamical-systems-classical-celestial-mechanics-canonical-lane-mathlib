import canonicalLaneMathlib.LagrangePoints

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure LagrangePackage (T : ThreeBodyPackage) where
  restrictedProblem : Prop
  corotatingFrame : Prop
  equilibriumPoints : Vector (Vector ℝ 2) 5
  L1L2L3Stability : Prop
  L4L5Stability : Prop

structure LagrangeEvidence {T : ThreeBodyPackage} (L : LagrangePackage T) where
  restrictedProblemClosed : L.restrictedProblem
  corotatingFrameClosed : L.corotatingFrame
  equilibriumPointsClosed : L.equilibriumPoints.length = 5
  L1L2L3StabilityClosed : L.L1L2L3Stability
  L4L5StabilityClosed : L.L4L5Stability

def LagrangeClosed {T : ThreeBodyPackage} (L : LagrangePackage T) : Prop :=
  L.restrictedProblem ∧ L.corotatingFrame ∧ (L.equilibriumPoints.length = 5) ∧ L.L1L2L3Stability ∧ L.L4L5Stability

theorem lagrange_closed_from_evidence {T : ThreeBodyPackage} (L : LagrangePackage T) (E : LagrangeEvidence L) :
    LagrangeClosed L := by
  exact And.intro E.restrictedProblemClosed
    (And.intro E.corotatingFrameClosed
      (And.intro E.equilibriumPointsClosed
        (And.intro E.L1L2L3StabilityClosed E.L4L5StabilityClosed)))

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse