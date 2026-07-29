import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure SchemeFoundationPackage where
  affineScheme : Type u
  schemeAsLocallyRingedSpace : Type v
  gluingAxioms : Prop
  morphismOfSchemes : Prop
  fiberProduct : Prop

structure SchemeFoundationEvidence (S : SchemeFoundationPackage) where
  gluingAxiomsClosed : S.gluingAxioms
  morphismOfSchemesClosed : S.morphismOfSchemes
  fiberProductClosed : S.fiberProduct

def SchemeFoundationClosed (S : SchemeFoundationPackage) : Prop :=
  S.gluingAxioms ∧ S.morphismOfSchemes ∧ S.fiberProduct

theorem scheme_foundation_closed_from_evidence (S : SchemeFoundationPackage) (E : SchemeFoundationEvidence S) :
    SchemeFoundationClosed S := by
  exact And.intro E.gluingAxiomsClosed (And.intro E.morphismOfSchemesClosed E.fiberProductClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse