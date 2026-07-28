import canonicalLaneMathlib.AdmissibleClass
import AutomorphicFormsGl2HilbertCanonicalLaneLean.HilbertModularForms

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure HeckeOperator (F : Type u) [Field F] (Γ : HilbertModularGroup F) (k : ℕ × ℕ) where
  index : Ideal (RingOfIntegers F)
  action : HilbertModularForm F Γ k → HilbertModularForm F Γ k
  commutation : ∀ T₁ T₂ : HeckeOperator F Γ k, T₁.action ∘ T₂.action = T₂.action ∘ T₁.action
  selfAdjoint : ∀ T, ... -- omitted
  heckeAlgebraGenerated : Prop

structure HeckeAlgebraPackage (F : Type u) [Field F] (Γ : HilbertModularGroup F) (k : ℕ × ℕ) where
  operators : Set (HeckeOperator F Γ k)
  commutative : Prop
  diagonalization : Prop
  eigenforms : Prop

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse