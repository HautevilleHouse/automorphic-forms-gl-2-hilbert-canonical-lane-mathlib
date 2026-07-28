import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure HilbertAdmittedObject where
  baseField : Type u
  ringOfIntegers : Type v
  narrowClassGroup : Type w
  weight : ℕ × ℕ
  level : Ideal (ringOfIntegers)
  character : DirichletCharacter (ringOfIntegers)
  cuspForms : Prop
  holomorphic : Prop
  conclusion : cuspForms ∧ holomorphic

structure AdmissibleClass where
  object : HilbertAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HilbertWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse