import canonicallaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CelestialMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CelestialMechanicsAdmittedObject where
  space : CelestialMechanicsSpace
  phaseSpaceDimension : ℕ
  configurationManifold : Type
  configTopology : TopologicalSpace configurationManifold
  symplecticForm : Type
  hamiltonianDefined : Prop
  integrabilityProperty : Prop
  conclusion : hamiltonianDefined ∧ integrabilityProperty

structure CelestialMechanicsEndgameState where
  object : CelestialMechanicsAdmittedObject

def CelestialMechanicsWitnessClosed (O : CelestialMechanicsAdmittedObject) : Prop :=
  O.hamiltonianDefined ∧ O.integrabilityProperty

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse