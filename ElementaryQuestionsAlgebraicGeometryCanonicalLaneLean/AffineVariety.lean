import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure AffineVarietyPackage where
  affineSpace : Type u
  coordinateRing : Type v
  vanishingIdeal : Prop
  nullstellensatzHolds : Prop
  radicalIdealCorrespondence : Prop

structure AffineVarietyEvidence (A : AffineVarietyPackage) where
  vanishingIdealClosed : A.vanishingIdeal
  nullstellensatzHoldsClosed : A.nullstellensatzHolds
  radicalIdealCorrespondenceClosed : A.radicalIdealCorrespondence

def AffineVarietyClosed (A : AffineVarietyPackage) : Prop :=
  A.vanishingIdeal ∧ A.nullstellensatzHolds ∧ A.radicalIdealCorrespondence

theorem affine_variety_closed_from_evidence (A : AffineVarietyPackage) (E : AffineVarietyEvidence A) :
    AffineVarietyClosed A := by
  exact And.intro E.vanishingIdealClosed (And.intro E.nullstellensatzHoldsClosed E.radicalIdealCorrespondenceClosed)

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse