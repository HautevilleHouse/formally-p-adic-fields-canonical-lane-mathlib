import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicIntegerRing {K : Type u} (A : PAdicFieldAxioms K) where
  ints : Set K
  closedUnderAddition : ∀ x y ∈ ints, A.addition x y ∈ ints
  closedUnderMultiplication : ∀ x y ∈ ints, A.multiplication x y ∈ ints
  containsZero : A.zero ∈ ints
  containsOne : A.one ∈ ints
  normCondition : ∀ x ∈ ints, A.nonArchimedeanNorm x ≤ 1

structure PAdicIntegerRingEvidence {K : Type u} {A : PAdicFieldAxioms K} (R : PAdicIntegerRing A) where
  closedUnderAdditionClosed : R.closedUnderAddition
  closedUnderMultiplicationClosed : R.closedUnderMultiplication
  containsZeroClosed : R.containsZero
  containsOneClosed : R.containsOne
  normConditionClosed : R.normCondition

def PAdicIntegerRingClosed {K : Type u} {A : PAdicFieldAxioms K} (R : PAdicIntegerRing A) : Prop :=
  R.closedUnderAddition ∧ R.closedUnderMultiplication ∧ R.containsZero ∧ R.containsOne ∧ R.normCondition

theorem pAdicIntegerRingClosedFromEvidence {K : Type u} {A : PAdicFieldAxioms K} (R : PAdicIntegerRing A) (E : PAdicIntegerRingEvidence R) : PAdicIntegerRingClosed R := by
  exact And.intro E.closedUnderAdditionClosed (And.intro E.closedUnderMultiplicationClosed (And.intro E.containsZeroClosed (And.intro E.containsOneClosed E.normConditionClosed)))

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
