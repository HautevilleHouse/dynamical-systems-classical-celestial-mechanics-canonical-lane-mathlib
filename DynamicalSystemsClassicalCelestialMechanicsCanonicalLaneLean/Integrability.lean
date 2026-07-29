import canonicallaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure IntegrabilityPackage where
  constantsOfMotion : List Type
  actionAngleVariables : Prop
  torusStructure : Prop
  integrabilityProof : Prop

structure IntegrabilityEvidence (I : IntegrabilityPackage) where
  actionAngleVariablesClosed : I.actionAngleVariables
  torusStructureClosed : I.torusStructure
  integrabilityProofClosed : I.integrabilityProof

def IntegrabilityClosed (I : IntegrabilityPackage) : Prop :=
  I.actionAngleVariables ∧ I.torusStructure ∧ I.integrabilityProof

theorem integrability_closed_from_evidence (I : IntegrabilityPackage)
    (E : IntegrabilityEvidence I) : IntegrabilityClosed I := by
  exact And.intro E.actionAngleVariablesClosed
    (And.intro E.torusStructureClosed E.integrabilityProofClosed)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse