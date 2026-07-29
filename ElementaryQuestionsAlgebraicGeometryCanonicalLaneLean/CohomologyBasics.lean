import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure CohomologyBasicsPackage where
  scheme : Type u
  coherentSheaf : Type v
  cechCohomology : Prop
  sheafCohomology : Prop
  eulerCharacteristic : Prop
  serreFiniteness : Prop

structure CohomologyBasicsEvidence (C : CohomologyBasicsPackage) where
  cechCohomologyClosed : C.cechCohomology
  sheafCohomologyClosed : C.sheafCohomology
  eulerCharacteristicClosed : C.eulerCharacteristic
  serreFinitenessClosed : C.serreFiniteness

def CohomologyBasicsClosed (C : CohomologyBasicsPackage) : Prop :=
  C.cechCohomology ∧ C.sheafCohomology ∧ C.eulerCharacteristic ∧ C.serreFiniteness

theorem cohomology_basics_closed_from_evidence (C : CohomologyBasicsPackage) (E : CohomologyBasicsEvidence C) :
    CohomologyBasicsClosed C := by
  exact And.intro E.cechCohomologyClosed (And.intro E.sheafCohomologyClosed (And.intro E.eulerCharacteristicClosed E.serreFinitenessClosed))

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse