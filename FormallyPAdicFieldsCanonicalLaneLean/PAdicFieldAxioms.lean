import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicFieldAxioms where
  carrier : Type u
  zero : carrier
  one : carrier
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  additiveGroup : AddGroupWithOne carrier
  multiplicativeGroup : GroupWithZero carrier
  nonArchimedeanNorm : carrier → ℝ
  normNonnegative : ∀ x : carrier, nonArchimedeanNorm x ≥ 0
  normZeroEquiv : ∀ x : carrier, nonArchimedeanNorm x = 0 ↔ x = zero
  normMultiplicative : ∀ x y : carrier, nonArchimedeanNorm (multiplication x y) = nonArchimedeanNorm x * nonArchimedeanNorm y
  ultrametricInequality : ∀ x y : carrier, nonArchimedeanNorm (addition x y) ≤ max (nonArchimedeanNorm x) (nonArchimedeanNorm y)

structure PAdicFieldEvidence (A : PAdicFieldAxioms) where
  additiveGroupClosed : A.additiveGroup = inferInstance
  multiplicativeGroupClosed : A.multiplicativeGroup = inferInstance
  normNonnegativeClosed : A.normNonnegative
  normZeroEquivClosed : A.normZeroEquiv
  normMultiplicativeClosed : A.normMultiplicative
  ultrametricInequalityClosed : A.ultrametricInequality

def PAdicFieldAxiomsClosed (A : PAdicFieldAxioms) : Prop :=
  A.normNonnegative ∧ A.normZeroEquiv ∧ A.normMultiplicative ∧ A.ultrametricInequality

theorem pAdicFieldAxiomsClosedFromEvidence (A : PAdicFieldAxioms) (E : PAdicFieldEvidence A) :
    PAdicFieldAxiomsClosed A := by
  exact And.intro E.normNonnegativeClosed (And.intro E.normZeroEquivClosed (And.intro E.normMultiplicativeClosed E.ultrametricInequalityClosed))

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
