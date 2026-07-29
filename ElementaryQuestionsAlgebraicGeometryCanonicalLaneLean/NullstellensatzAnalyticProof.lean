import NullstellensatzEvidenceTerms.lean

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure NullstellensatzAnalyticCertificate {V : AffineVariety} (S : HilbertNullstellensatzStatement) where
  vanishingSetProof : Prop
  nilpotentConditionProof : Prop
  vanishingSetProofClosed : vanishingSetProof
  nilpotentConditionProofClosed : nilpotentConditionProof
  evidence : NullstellensatzEvidence S

def NullstellensatzAnalyticCertificateClosed {V : AffineVariety} {S : HilbertNullstellensatzStatement} (C : NullstellensatzAnalyticCertificate S) : Prop :=
  C.vanishingSetProof ∧ C.nilpotentConditionProof ∧ NullstellensatzClosed S

theorem nullstellensatz_analytic_certificate_closed {V : AffineVariety} {S : HilbertNullstellensatzStatement} (C : NullstellensatzAnalyticCertificate S) :
  NullstellensatzAnalyticCertificateClosed C := by
  exact And.intro C.vanishingSetProofClosed (And.intro C.nilpotentConditionProofClosed (nullstellensatz_closed_from_evidence S C.evidence))

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse