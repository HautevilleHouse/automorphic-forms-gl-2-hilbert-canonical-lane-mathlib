import AutomorphicFormsGl2HilbertCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsGl2HilbertCanonicalLaneLean

structure HilbertModularGroupPackage where
  field : Type
  ringOfIntegers : Type
  group : Type
  congruenceSubgroup : Prop
  adelization : Prop
  strongApproximation : Prop

structure HilbertModularGroupEvidence (P : HilbertModularGroupPackage) where
  congruenceSubgroupClosed : P.congruenceSubgroup
  adelizationClosed : P.adelization
  strongApproximationClosed : P.strongApproximation

def HilbertModularGroupClosed (P : HilbertModularGroupPackage) : Prop :=
  P.congruenceSubgroup ∧ P.adelization ∧ P.strongApproximation

theorem hilbert_modular_group_closed_from_evidence
    (P : HilbertModularGroupPackage) (E : HilbertModularGroupEvidence P) :
    HilbertModularGroupClosed P := by
  exact And.intro E.congruenceSubgroupClosed
    (And.intro E.adelizationClosed E.strongApproximationClosed)

end AutomorphicFormsGl2HilbertCanonicalLaneLean
end HautevilleHouse