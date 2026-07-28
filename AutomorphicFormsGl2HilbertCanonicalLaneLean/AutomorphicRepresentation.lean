import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure AutomorphicRepresentationPackage where
  numberField : Type u
  adeleGroup : Type v
  representation : Type w
  irreducibility : Prop
  admissibility : Prop
  cuspidality : Prop

structure AutomorphicRepresentationEvidence (A : AutomorphicRepresentationPackage) where
  irreducibilityClosed : A.irreducibility
  admissibilityClosed : A.admissibility
  cuspidalityClosed : A.cuspidality

def AutomorphicRepresentationClosed (A : AutomorphicRepresentationPackage) : Prop :=
  A.irreducibility ∧ A.admissibility ∧ A.cuspidality

theorem automorphic_representation_closed_from_evidence (A : AutomorphicRepresentationPackage) (E : AutomorphicRepresentationEvidence A) : AutomorphicRepresentationClosed A :=
  And.intro E.irreducibilityClosed (And.intro E.admissibilityClosed E.cuspidalityClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse