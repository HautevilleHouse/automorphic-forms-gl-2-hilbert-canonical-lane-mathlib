import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure HilbertModularFormsPackage where
  numberField : Type u
  weight : Type v
  level : Type w
  holomorphy : Prop
  growthCondition : Prop
  FourierExpansion : Prop

structure HilbertModularFormsEvidence (H : HilbertModularFormsPackage) where
  holomorphyClosed : H.holomorphy
  growthConditionClosed : H.growthCondition
  fourierExpansionClosed : H.FourierExpansion

def HilbertModularFormsClosed (H : HilbertModularFormsPackage) : Prop :=
  H.holomorphy ∧ H.growthCondition ∧ H.FourierExpansion

theorem hilbert_modular_forms_closed_from_evidence (H : HilbertModularFormsPackage) (E : HilbertModularFormsEvidence H) : HilbertModularFormsClosed H :=
  And.intro E.holomorphyClosed (And.intro E.growthConditionClosed E.fourierExpansionClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse