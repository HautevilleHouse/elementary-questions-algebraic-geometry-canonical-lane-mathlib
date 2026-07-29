import HautevilleHouse.ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  algebraicGeometryConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "elementary-questions-algebraic-geometry-canonical-lane",
    theoremName := "Elementary Questions in Algebraic Geometry",
    theoremObject := "ConstrainedAlgebraicGeometryClosure",
    classicalBoundary := "classical source boundary carried",
    algebraicGeometryConstrainedStatement := "Algebraic geometry constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "algebraic_geometry_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end ElementaryQuestionsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse