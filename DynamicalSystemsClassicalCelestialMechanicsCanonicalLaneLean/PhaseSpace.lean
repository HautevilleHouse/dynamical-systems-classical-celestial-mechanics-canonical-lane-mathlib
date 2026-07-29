import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure PhaseSpace (n : Nat) where
  coordinates : Type u
  velocities : Type v
  positionSpace : TopologicalSpace coordinates
  velocitySpace : TopologicalSpace velocities
  symplecticForm : Prop
  dimension : Prop
  symplecticFormClosed : symplecticForm
  dimensionClosed : dimension

def PhaseSpaceClosed (n : Nat) (P : PhaseSpace n) : Prop :=
  P.symplecticForm ∧ P.dimension

theorem phase_space_closed_from_evidence (n : Nat) (P : PhaseSpace n) : PhaseSpaceClosed n P :=
  And.intro P.symplecticFormClosed P.dimensionClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
