import canonicalLaneMathlib.AdmissibleClass
import ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass
import ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.SchemeStructure

/-!
# Affine Scheme Spec Package
-/

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure AffineSchemeSpecPackage (X : AlgebraicGeometryObject) (S : SchemeStructurePackage X) where
  ring : Type u
  primeSpectrum : Type v
  isomorphismToSpec : Prop
  finitelyGenerated : Prop

structure AffineSchemeSpecEvidence (X : AlgebraicGeometryObject) (S : SchemeStructurePackage X)
    (A : AffineSchemeSpecPackage X S) where
  ringClosed : True
  primeSpectrumClosed : True
  isomorphismToSpecClosed : A.isomorphismToSpec
  finitelyGeneratedClosed : A.finitelyGenerated

def AffineSchemeSpecClosed (X : AlgebraicGeometryObject) (S : SchemeStructurePackage X)
    (A : AffineSchemeSpecPackage X S) : Prop :=
  A.isomorphismToSpec ∧ A.finitelyGenerated

theorem affine_scheme_spec_closed_from_evidence (X : AlgebraicGeometryObject) (S : SchemeStructurePackage X)
    (A : AffineSchemeSpecPackage X S) (E : AffineSchemeSpecEvidence X S A) :
    AffineSchemeSpecClosed X S A := by
  exact And.intro E.isomorphismToSpecClosed E.finitelyGeneratedClosed

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse