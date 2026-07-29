import canonicalLaneMathlib.Bifurcations

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure BifurcationPackage where
  parameterSpace : Type
  family : parameterSpace → ℝ → Vector ℝ 3 → Vector ℝ 3
  criticalPoints : Set (parameterSpace × ℝ × Vector ℝ 3)
  bifurcationTypes : List String
  normalForms : Prop
  stabilityAnalysis : Prop

structure BifurcationEvidence (B : BifurcationPackage) where
  criticalPointsClosed : B.criticalPoints ≠ ∅
  normalFormsClosed : B.normalForms
  stabilityAnalysisClosed : B.stabilityAnalysis

def BifurcationClosed (B : BifurcationPackage) : Prop :=
  (B.criticalPoints ≠ ∅) ∧ B.normalForms ∧ B.stabilityAnalysis

theorem bifurcation_closed_from_evidence (B : BifurcationPackage) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact And.intro E.criticalPointsClosed (And.intro E.normalFormsClosed E.stabilityAnalysisClosed)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse