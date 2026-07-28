import AutomorphicFormsGl2HilbertCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  automorphicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "Automorphic Forms GL(2) Hilbert",
  theoremName := "Automorphic Forms GL(2) Hilbert",
  theoremObject := "Hilbert modular form",
  classicalBoundary := "Langlands correspondence boundary",
  automorphicConstrainedStatement := "automorphic-form-constrained theorem certificate through Hecke eigenform and Galois representation",
  certificateLane := "automorphic_constrained",
  carriedRemainder := "admissible closure carries endpoint and remainder separation"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "Automorphic Forms GL(2) Hilbert" := by
  rfl

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse