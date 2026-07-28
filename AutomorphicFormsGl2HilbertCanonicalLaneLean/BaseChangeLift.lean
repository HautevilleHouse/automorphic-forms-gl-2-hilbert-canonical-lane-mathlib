import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure BaseChangeLiftPackage where
  baseField : Type u
  extensionField : Type v
  baseAutomorphicRep : Type w
  liftedAutomorphicRep : Type x
  functoriality : Prop
  compatibilityWithHeckeAlgebra : Prop
  baseChangeIdentity : Prop

structure BaseChangeLiftEvidence (B : BaseChangeLiftPackage) where
  functorialityClosed : B.functoriality
  compatibilityWithHeckeAlgebraClosed : B.compatibilityWithHeckeAlgebra
  baseChangeIdentityClosed : B.baseChangeIdentity

def BaseChangeLiftClosed (B : BaseChangeLiftPackage) : Prop :=
  B.functoriality ∧ B.compatibilityWithHeckeAlgebra ∧ B.baseChangeIdentity

theorem base_change_lift_closed_from_evidence (B : BaseChangeLiftPackage)
    (E : BaseChangeLiftEvidence B) : BaseChangeLiftClosed B := by
  exact And.intro E.functorialityClosed
    (And.intro E.compatibilityWithHeckeAlgebraClosed E.baseChangeIdentityClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse