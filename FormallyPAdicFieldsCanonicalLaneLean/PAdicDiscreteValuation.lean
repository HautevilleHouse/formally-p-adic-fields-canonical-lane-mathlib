import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicPrime where
  p : ℕ
  primeWitness : Nat.Prime p

structure DiscreteValuationRing (A : Type u) where
  valuation : A → ℤ
  addVal : ∀ x y, valuation (x + y) ≥ min (valuation x) (valuation y)
  mulVal : ∀ x y, valuation (x * y) = valuation x + valuation y
  valOne : valuation 1 = 0
  valZero : valuation 0 = ⊤

def PAdicField (p : PAdicPrime) : Type :=
  ℚ_p p.p *

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse