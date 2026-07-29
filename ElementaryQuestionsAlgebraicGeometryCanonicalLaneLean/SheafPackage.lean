import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure SheafPackage (X : Type) [TopologicalSpace X] where
  presheaf : Type
  sheafCondition : Prop
  localSections : Prop
  gluingCompatibility : Prop

structure SheafEvidence {X : Type} [TopologicalSpace X] (S : SheafPackage X) where
  sheafConditionClosed : S.sheafCondition
  localSectionsClosed : S.localSections
  gluingCompatibilityClosed : S.gluingCompatibility

def SheafClosed {X : Type} [TopologicalSpace X] (S : SheafPackage X) : Prop :=
  S.sheafCondition ∧ S.localSections ∧ S.gluingCompatibility

theorem sheaf_closed_from_evidence {X : Type} [TopologicalSpace X] (S : SheafPackage X) (E : SheafEvidence S) : SheafClosed S := by
  exact And.intro E.sheafConditionClosed (And.intro E.localSectionsClosed E.gluingCompatibilityClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse