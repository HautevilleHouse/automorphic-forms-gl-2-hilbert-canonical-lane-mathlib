import canonicalLaneMathlib.AdmissibleClass
import AutomorphicFormsGl2HilbertCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

def HilbertWitnessClosed (O : HilbertAdmittedObject) : Prop :=
  O.cuspForms ∧ O.holomorphic

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HilbertWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse