import AlgebraicGeometryObjects.lean

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure HilbertNullstellensatzStatement where
  variety : AffineVariety
  ideal : Type
  vanishingSet : Prop
  nilpotentCondition : Prop
  statementClosed : Prop

structure GroebnerBasisStatement where
  ideal : Type
  basis : Type
  normalFormProperty : Prop
  statementClosed : Prop

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse