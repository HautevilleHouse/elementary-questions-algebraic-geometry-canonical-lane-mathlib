import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure AffineVarietyPackage where
  coordinateRing : Type
  underlyingSet : Type
  topology : TopologicalSpace underlyingSet
  isClosedSubset : Prop
  irreducible : Prop
  varietyStructure : Prop

structure AffineVarietyEvidence (V : AffineVarietyPackage) where
  coordinateRingClosed : Varieties.coordinateRingDefined
  isClosedSubsetClosed : V.isClosedSubset
  irreducibleClosed : V.irreducible
  varietyStructureClosed : V.varietyStructure

def AffineVarietyClosed (V : AffineVarietyPackage) : Prop :=
  V.isClosedSubset ∧ V.irreducible ∧ V.varietyStructure

theorem affine_variety_closed_from_evidence (V : AffineVarietyPackage) (E : AffineVarietyEvidence V) : AffineVarietyClosed V := by
  exact And.intro E.isClosedSubsetClosed (And.intro E.irreducibleClosed E.varietyStructureClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse