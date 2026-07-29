import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.SheafPackage

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure SchemePackage (X : Type) [TopologicalSpace X] where
  structureSheaf : SheafPackage X
  isLocallyAffine : Prop
  affineCover : Prop
  separatedness : Prop

structure SchemeEvidence {X : Type} [TopologicalSpace X] (S : SchemePackage X) where
  structureSheafClosed : SheafClosed S.structureSheaf
  isLocallyAffineClosed : S.isLocallyAffine
  affineCoverClosed : S.affineCover
  separatednessClosed : S.separatedness

def SchemeClosed {X : Type} [TopologicalSpace X] (S : SchemePackage X) : Prop :=
  S.isLocallyAffine ∧ S.affineCover ∧ S.separatedness

theorem scheme_closed_from_evidence {X : Type} [TopologicalSpace X] (S : SchemePackage X) (E : SchemeEvidence S) : SchemeClosed S := by
  exact And.intro E.isLocallyAffineClosed (And.intro E.affineCoverClosed E.separatednessClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse