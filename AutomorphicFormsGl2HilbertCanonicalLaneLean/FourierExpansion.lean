import canonicalLaneMathlib.AdmissibleClass
import AutomorphicFormsGl2HilbertCanonicalLaneLean.HilbertModularForms

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure FourierCoefficient (F : Type u) [Field F] where
  index : ProductIdeals (RingOfIntegers F)
  value : ℂ

structure WhittakerExpansion (F : Type u) [Field F] (f : HilbertModularForm F Γ k) where
  coefficients : Multiset (FourierCoefficient F)
  additiveCharacter : ... -- omitted
  convergence : Prop
  cuspConditionEquivalent : Prop

structure FourierExpansionPackage (F : Type u) [Field F] (Γ : HilbertModularGroup F) (k : ℕ × ℕ) where
  form : HilbertModularForm F Γ k
  expansion : WhittakerExpansion F form
  heckeEigenvaluesFromCoefficients : Prop

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse