import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

def ConstrainedAGClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ag_endgame (A : AdmissibleClass) : ConstrainedAGClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse