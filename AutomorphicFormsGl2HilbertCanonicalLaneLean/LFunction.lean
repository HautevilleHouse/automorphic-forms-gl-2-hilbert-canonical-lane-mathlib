import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure LFunctionPackage where
  automorphicRepresentation : Type u
  LFunction : Type v
  meromorphicContinuation : Prop
  functionalEquation : Prop
  specialValues : Prop

structure LFunctionEvidence (L : LFunctionPackage) where
  meromorphicContinuationClosed : L.meromorphicContinuation
  functionalEquationClosed : L.functionalEquation
  specialValuesClosed : L.specialValues

def LFunctionClosed (L : LFunctionPackage) : Prop :=
  L.meromorphicContinuation ∧ L.functionalEquation ∧ L.specialValues

theorem l_function_closed_from_evidence (L : LFunctionPackage) (E : LFunctionEvidence L) : LFunctionClosed L :=
  And.intro E.meromorphicContinuationClosed (And.intro E.functionalEquationClosed E.specialValuesClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse