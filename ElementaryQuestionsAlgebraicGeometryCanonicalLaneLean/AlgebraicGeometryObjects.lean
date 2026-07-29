import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure AlgebraicVariety where
  carrier : Type
  topology : TopologicalSpace carrier
  isReduced : Prop
  isIrreducible : Prop

structure AffineVariety extends AlgebraicVariety where
  coordinateRing : Type
  isFinitelyGenerated : Prop
  isReduced : coordinateRing -> Prop

structure ProjectiveVariety extends AlgebraicVariety where
  projectiveCoordinateRing : Type
  gradedRing : Prop

structure AdmissibleClass where
  object : AlgebraicVariety
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∃ (V : AlgebraicVariety), V = A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse