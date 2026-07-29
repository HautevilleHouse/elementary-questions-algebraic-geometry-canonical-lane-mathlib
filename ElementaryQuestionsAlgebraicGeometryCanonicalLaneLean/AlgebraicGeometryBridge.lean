import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

open AdmissibleClass

def algebraicGeometryBridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem algebraic_geometry_bridge_from_admissible (A : AdmissibleClass) :
    algebraicGeometryBridgeClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse