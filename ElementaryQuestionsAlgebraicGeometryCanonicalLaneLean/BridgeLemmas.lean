import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse