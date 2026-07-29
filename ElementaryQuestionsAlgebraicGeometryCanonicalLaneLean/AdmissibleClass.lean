import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure AGAdmittedObject where
  underlyingSpace : Type
  structureSheaf : Type
  isVariety : Prop
  isIrreducible : Prop
  conclusion : isVariety ∧ isIrreducible

structure AdmissibleClass where
  object : AGAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse