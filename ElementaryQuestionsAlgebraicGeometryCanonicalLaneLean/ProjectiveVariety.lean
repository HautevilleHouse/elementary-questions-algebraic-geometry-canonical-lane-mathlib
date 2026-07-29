import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure ProjectiveVarietyPackage where
  projectiveSpace : Type u
  homogeneousCoordinateRing : Type v
  homogeneousIdeal : Prop
  projConstruction : Prop
  homogeneousNullstellensatz : Prop

structure ProjectiveVarietyEvidence (P : ProjectiveVarietyPackage) where
  homogeneousIdealClosed : P.homogeneousIdeal
  projConstructionClosed : P.projConstruction
  homogeneousNullstellensatzClosed : P.homogeneousNullstellensatz

def ProjectiveVarietyClosed (P : ProjectiveVarietyPackage) : Prop :=
  P.homogeneousIdeal ∧ P.projConstruction ∧ P.homogeneousNullstellensatz

theorem projective_variety_closed_from_evidence (P : ProjectiveVarietyPackage) (E : ProjectiveVarietyEvidence P) :
    ProjectiveVarietyClosed P := by
  exact And.intro E.homogeneousIdealClosed (And.intro E.projConstructionClosed E.homogeneousNullstellensatzClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse