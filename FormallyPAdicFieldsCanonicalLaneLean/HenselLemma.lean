import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure HenselLift (K : Type u) [Field K] (v : K → ℤ) where
  polynomial : Polynomial K
  approximateRoot : K
  valuationCondition : v (polynomial.eval approximateRoot) > 2 * v (polynomial.derivative.eval approximateRoot)
  liftRoot : K
  liftCondition : polynomial.eval liftRoot = 0 ∧ v (liftRoot - approximateRoot) ≥ v (polynomial.derivative.eval approximateRoot)

def HenselClosed (K : Type u) [Field K] (v : K → ℤ) : Prop :=
  ∀ (p : Polynomial K) (a : K), v (p.eval a) > 2 * v (p.derivative.eval a) →
    ∃ (b : K), p.eval b = 0 ∧ v (b - a) ≥ v (p.derivative.eval a)

theorem hensel_lift_closed (K : Type u) [Field K] (v : K → ℤ) (h : HenselClosed K v) (p : Polynomial K) (a : K)
    (cond : v (p.eval a) > 2 * v (p.derivative.eval a)) : HenselLift K v := by
  obtain ⟨b, hb⟩ := h p a cond
  exact { polynomial := p, approximateRoot := a, valuationCondition := cond, liftRoot := b, liftCondition := hb }

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse