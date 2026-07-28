import canonicalLaneMathlib.AdmissibleClass
import AutomorphicFormsGl2HilbertCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse