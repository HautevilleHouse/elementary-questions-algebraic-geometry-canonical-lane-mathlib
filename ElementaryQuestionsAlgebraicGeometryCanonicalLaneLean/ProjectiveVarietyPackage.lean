import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure ProjectiveVarietyPackage where
  homogeneousCoordinateRing : Type
  projectiveSpace : Type
  topology : TopologicalSpace projectiveSpace
  isProjectiveSubscheme : Prop
  irreducible : Prop
  projectiveVarietyStructure : Prop

structure ProjectiveVarietyEvidence (P : ProjectiveVarietyPackage) where
  homogeneousCoordinateRingClosed : Varieties.homogeneousCoordinateRingDefined
  isProjectiveSubschemeClosed : P.isProjectiveSubscheme
  irreducibleClosed : P.irreducible
  projectiveVarietyStructureClosed : P.projectiveVarietyStructure

def ProjectiveVarietyClosed (P : ProjectiveVarietyPackage) : Prop :=
  P.isProjectiveSubscheme ∧ P.irreducible ∧ P.projectiveVarietyStructure

theorem projective_variety_closed_from_evidence (P : ProjectiveVarietyPackage) (E : ProjectiveVarietyEvidence P) : ProjectiveVarietyClosed P := by
  exact And.intro E.isProjectiveSubschemeClosed (And.intro E.irreducibleClosed E.projectiveVarietyStructureClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse