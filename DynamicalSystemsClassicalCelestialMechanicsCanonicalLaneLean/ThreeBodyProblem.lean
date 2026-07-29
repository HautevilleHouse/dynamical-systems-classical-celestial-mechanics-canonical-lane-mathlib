import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure CentralForceLaw where
  forceInverseSquare : Prop
  gravitationalConstant : Prop
  potentialFunction : Prop
  forceInverseSquareClosed : forceInverseSquare
  gravitationalConstantClosed : gravitationalConstant
  potentialFunctionClosed : potentialFunction

def CentralForceLawClosed (F : CentralForceLaw) : Prop :=
  F.forceInverseSquare ∧ F.gravitationalConstant ∧ F.potentialFunction

theorem central_force_law_closed_from_evidence (F : CentralForceLaw) : CentralForceLawClosed F :=
  And.intro F.forceInverseSquareClosed (And.intro F.gravitationalConstantClosed F.potentialFunctionClosed)

structure ThreeBodyProblem where
  massDistribution : Prop
  initialPositions : Prop
  initialVelocities : Prop
  timeEvolution : Prop
  massDistributionClosed : massDistribution
  initialPositionsClosed : initialPositions
  initialVelocitiesClosed : initialVelocities
  timeEvolutionClosed : timeEvolution

def ThreeBodyProblemClosed (T : ThreeBodyProblem) : Prop :=
  T.massDistribution ∧ T.initialPositions ∧ T.initialVelocities ∧ T.timeEvolution

theorem three_body_problem_closed_from_evidence (T : ThreeBodyProblem) : ThreeBodyProblemClosed T :=
  And.intro T.massDistributionClosed (And.intro T.initialPositionsClosed (And.intro T.initialVelocitiesClosed T.timeEvolutionClosed))

structure ChaoticMotionPackage (F : CentralForceLaw) (T : ThreeBodyProblem) where
  sensitivityToInitialConditions : Prop
  topologicalTransitivity : Prop
  densePeriodicOrbits : Prop
  sensitivityClosed : sensitivityToInitialConditions
  transitivityClosed : topologicalTransitivity
  periodicOrbitsClosed : densePeriodicOrbits

def ChaoticMotionClosed (F : CentralForceLaw) (T : ThreeBodyProblem) (C : ChaoticMotionPackage F T) : Prop :=
  C.sensitivityToInitialConditions ∧ C.topologicalTransitivity ∧ C.densePeriodicOrbits

theorem chaotic_motion_closed_from_evidence (F : CentralForceLaw) (T : ThreeBodyProblem) (C : ChaoticMotionPackage F T) : ChaoticMotionClosed F T C :=
  And.intro C.sensitivityClosed (And.intro C.transitivityClosed C.periodicOrbitsClosed)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
