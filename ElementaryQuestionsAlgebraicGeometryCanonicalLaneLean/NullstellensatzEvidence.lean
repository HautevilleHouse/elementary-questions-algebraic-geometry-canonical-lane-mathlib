import AlgebraicGeometryStatement.lean

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure NullstellensatzEvidence {V : AffineVariety} (S : HilbertNullstellensatzStatement) where
  vanishingSetClosed : S.vanishingSet
  nilpotentConditionClosed : S.nilpotentCondition
  statementEvidence : S.statementClosed

def NullstellensatzClosed {V : AffineVariety} (S : HilbertNullstellensatzStatement) : Prop :=
  S.vanishingSet ∧ S.nilpotentCondition ∧ S.statementClosed

theorem nullstellensatz_closed_from_evidence {V : AffineVariety} (S : HilbertNullstellensatzStatement) (E : NullstellensatzEvidence S) :
  NullstellensatzClosed S := by
  exact And.intro E.vanishingSetClosed (And.intro E.nilpotentConditionClosed E.statementEvidence)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse