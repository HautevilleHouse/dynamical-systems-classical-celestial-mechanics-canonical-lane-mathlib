import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure PoincareSectionPackage where
  phaseSpace : Type
  sectionSurface : Type
  returnMap : Type
  transversalCondition : Prop
  sectionClosed : Prop

structure PoincareSectionEvidence (P : PoincareSectionPackage) where
  transversalConditionClosed : P.transversalCondition
  sectionClosedClosed : P.sectionClosed

def PoincareSectionClosed (P : PoincareSectionPackage) : Prop :=
  P.transversalCondition ∧ P.sectionClosed

theorem poincare_section_closed_from_evidence (P : PoincareSectionPackage) (E : PoincareSectionEvidence P) :
  PoincareSectionClosed P :=
by
  exact And.intro E.transversalConditionClosed E.sectionClosedClosed

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
