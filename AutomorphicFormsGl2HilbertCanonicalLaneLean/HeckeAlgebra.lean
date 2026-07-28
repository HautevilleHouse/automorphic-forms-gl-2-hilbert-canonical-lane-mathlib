import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure HeckeAlgebraPackage where
  numberField : Type u
  ringOfIntegers : Type v
  heckeOperators : Type w
  multiplicativity : Prop
  commutativity : Prop
  selfAdjointness : Prop

structure HeckeAlgebraEvidence (H : HeckeAlgebraPackage) where
  multiplicativityClosed : H.multiplicativity
  commutativityClosed : H.commutativity
  selfAdjointnessClosed : H.selfAdjointness

def HeckeAlgebraClosed (H : HeckeAlgebraPackage) : Prop :=
  H.multiplicativity ∧ H.commutativity ∧ H.selfAdjointness

theorem hecke_algebra_closed_from_evidence (H : HeckeAlgebraPackage) (E : HeckeAlgebraEvidence H) : HeckeAlgebraClosed H :=
  And.intro E.multiplicativityClosed (And.intro E.commutativityClosed E.selfAdjointnessClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse