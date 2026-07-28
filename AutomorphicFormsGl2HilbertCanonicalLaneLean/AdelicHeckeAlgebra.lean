import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure AdelicHeckeAlgebraPackage where
  numberField : Type u
  adeleRing : Type v
  heckeAlgebra : Type w
  localHeckeAlgebras : Prop
  satakeIsomorphism : Prop
  unramifiedPlaces : Prop
  sphericalHeckeAlgebra : Prop

structure AdelicHeckeAlgebraEvidence (A : AdelicHeckeAlgebraPackage) where
  localHeckeAlgebrasClosed : A.localHeckeAlgebras
  satakeIsomorphismClosed : A.satakeIsomorphism
  unramifiedPlacesClosed : A.unramifiedPlaces
  sphericalHeckeAlgebraClosed : A.sphericalHeckeAlgebra

def AdelicHeckeAlgebraClosed (A : AdelicHeckeAlgebraPackage) : Prop :=
  A.localHeckeAlgebras ∧ A.satakeIsomorphism ∧
  A.unramifiedPlaces ∧ A.sphericalHeckeAlgebra

theorem adelic_hecke_algebra_closed_from_evidence (A : AdelicHeckeAlgebraPackage)
    (E : AdelicHeckeAlgebraEvidence A) : AdelicHeckeAlgebraClosed A := by
  exact And.intro E.localHeckeAlgebrasClosed
    (And.intro E.satakeIsomorphismClosed
      (And.intro E.unramifiedPlacesClosed E.sphericalHeckeAlgebraClosed))

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse