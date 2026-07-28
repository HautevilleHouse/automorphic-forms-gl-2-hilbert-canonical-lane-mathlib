import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure AutomorphicLiftData where
  sourceForm : Type
  targetForm : Type
  baseChange : Type
  functoriality : Prop

def AutomorphicLiftClosed (A : AutomorphicLiftData) : Prop :=
  A.functoriality

theorem automorphic_lift_closed (A : AutomorphicLiftData) (h : A.functoriality) :
  AutomorphicLiftClosed A := by
  exact h

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse