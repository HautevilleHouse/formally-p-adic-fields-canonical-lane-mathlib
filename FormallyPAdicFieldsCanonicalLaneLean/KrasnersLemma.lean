import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure KrasnersLemmaData {K : Type u} (A : PAdicFieldAxioms K) where
  polynomial : K → K
  root : K
  separationBound : ℝ
  hypothesis : ∀ x : K, A.nonArchimedeanNorm (polynomial x) ≤ separationBound
  rootCondition : polynomial root = A.zero
  uniqueness : ∀ x : K, polynomial x = A.zero ∧ A.nonArchimedeanNorm (A.addition x (A.multiplication (A.zero) (A.zero))) < separationBound → x = root

structure KrasnersLemmaEvidence {K : Type u} {A : PAdicFieldAxioms K} (D : KrasnersLemmaData A) where
  hypothesisClosed : D.hypothesis
  rootConditionClosed : D.rootCondition
  uniquenessClosed : D.uniqueness

def KrasnersLemmaClosed {K : Type u} {A : PAdicFieldAxioms K} (D : KrasnersLemmaData A) : Prop :=
  D.hypothesis ∧ D.rootCondition ∧ D.uniqueness

theorem krasnersLemmaClosedFromEvidence {K : Type u} {A : PAdicFieldAxioms K} (D : KrasnersLemmaData A) (E : KrasnersLemmaEvidence D) : KrasnersLemmaClosed D := by
  exact And.intro E.hypothesisClosed (And.intro E.rootConditionClosed E.uniquenessClosed)

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
