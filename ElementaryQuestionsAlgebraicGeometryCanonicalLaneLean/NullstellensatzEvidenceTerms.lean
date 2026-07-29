import NullstellensatzEvidence.lean

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure NullstellensatzEvidenceTerms {V : AffineVariety} (S : HilbertNullstellensatzStatement) where
  vanishingSetTerm : S.vanishingSet
  nilpotentConditionTerm : S.nilpotentCondition
  statementTerm : S.statementClosed
  closureTerm : NullstellensatzClosed S

def HilbertNullstellensatzCertificate.evidenceTerms {V : AffineVariety} (S : HilbertNullstellensatzStatement) (E : NullstellensatzEvidence S) :
  NullstellensatzEvidenceTerms S :=
  { vanishingSetTerm := E.vanishingSetClosed
    nilpotentConditionTerm := E.nilpotentConditionClosed
    statementTerm := E.statementEvidence
    closureTerm := nullstellensatz_closed_from_evidence S E
  }

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse