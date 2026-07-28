import canonicalLaneMathlib.AdmissibleClass
import HeckeAlgebra

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure AutomorphicLfunctionsPackage {H : HilbertModularFormsPackage}
    (A : HeckeAlgebraPackage H) where
  lFunction : Type u
  functionalEquation : Prop
  analyticContinuation : Prop
  specialValueFormula : Prop

structure AutomorphicLfunctionsEvidence {H : HilbertModularFormsPackage}
    {A : HeckeAlgebraPackage H} (L : AutomorphicLfunctionsPackage A) where
  lFunctionDefined : L.lFunction
  functionalEquationClosed : L.functionalEquation
  analyticContinuationClosed : L.analyticContinuation
  specialValueFormulaClosed : L.specialValueFormula

def AutomorphicLfunctionsClosed {H : HilbertModularFormsPackage}
    {A : HeckeAlgebraPackage H} (L : AutomorphicLfunctionsPackage A) : Prop :=
  L.functionalEquation ∧ L.analyticContinuation ∧ L.specialValueFormula

theorem automorphic_lfunctions_closed_from_evidence
    {H : HilbertModularFormsPackage} {A : HeckeAlgebraPackage H}
    (L : AutomorphicLfunctionsPackage A) (E : AutomorphicLfunctionsEvidence L) :
    AutomorphicLfunctionsClosed L := by
  exact And.intro E.functionalEquationClosed
    (And.intro E.analyticContinuationClosed E.specialValueFormulaClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse