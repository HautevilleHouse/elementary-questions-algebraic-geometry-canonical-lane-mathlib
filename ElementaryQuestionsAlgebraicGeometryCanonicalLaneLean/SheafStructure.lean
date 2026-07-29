import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure SheafStructurePackage where
  topologicalSpace : Type u
  presheafOfRings : Type v
  sheafCondition : Prop
  stalksComputed : Prop
  morphismSheaf : Prop

structure SheafStructureEvidence (S : SheafStructurePackage) where
  sheafConditionClosed : S.sheafCondition
  stalksComputedClosed : S.stalksComputed
  morphismSheafClosed : S.morphismSheaf

def SheafStructureClosed (S : SheafStructurePackage) : Prop :=
  S.sheafCondition ∧ S.stalksComputed ∧ S.morphismSheaf

theorem sheaf_structure_closed_from_evidence (S : SheafStructurePackage) (E : SheafStructureEvidence S) :
    SheafStructureClosed S := by
  exact And.intro E.sheafConditionClosed (And.intro E.stalksComputedClosed E.morphismSheafClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse