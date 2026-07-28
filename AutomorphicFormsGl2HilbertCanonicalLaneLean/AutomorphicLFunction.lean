import AutomorphicFormsGl2HilbertCanonicalLaneLean.AdmissibleClass
import AutomorphicFormsGl2HilbertCanonicalLaneLean.AutomorphicRepresentation

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure AutomorphicLFunctionPackage {P : HilbertModularGroupPackage}
    {R : AutomorphicRepresentationPackage P} where
  LFunction : Type
  functionalEquation : Prop
  analyticContinuation : Prop
  specialValues : Prop
  LanglandsConjecture : Prop

structure AutomorphicLFunctionEvidence {P : HilbertModularGroupPackage}
    {R : AutomorphicRepresentationPackage P} (L : AutomorphicLFunctionPackage R) where
  functionalEquationClosed : L.functionalEquation
  analyticContinuationClosed : L.analyticContinuation
  specialValuesClosed : L.specialValues
  LanglandsConjectureClosed : L.LanglandsConjecture

def AutomorphicLFunctionClosed {P : HilbertModularGroupPackage}
    {R : AutomorphicRepresentationPackage P} (L : AutomorphicLFunctionPackage R) : Prop :=
  L.functionalEquation ∧ L.analyticContinuation ∧ L.specialValues ∧ L.LanglandsConjecture

theorem automorphic_l_function_closed_from_evidence
    {P : HilbertModularGroupPackage} {R : AutomorphicRepresentationPackage P}
    (L : AutomorphicLFunctionPackage R) (E : AutomorphicLFunctionEvidence L) :
    AutomorphicLFunctionClosed L := by
  exact And.intro E.functionalEquationClosed
    (And.intro E.analyticContinuationClosed
      (And.intro E.specialValuesClosed E.LanglandsConjectureClosed))

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse