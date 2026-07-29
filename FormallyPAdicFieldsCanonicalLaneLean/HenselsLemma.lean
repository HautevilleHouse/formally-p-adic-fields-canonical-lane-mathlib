import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.FormallyPAdicField

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure HenselsLemmaPackage (F : FormallyPAdicField) where
  polynomialRing : Type u
  polynomial : polynomialRing
  approximateRoot : F.carrier
  derivative : polynomialRing
  condition : F.valuation (eval approximateRoot polynomial) > 2 * F.valuation (eval approximateRoot derivative)
  exactRoot : F.carrier
  rootProperty : eval exactRoot polynomial = 0
  approximation : F.valuation (exactRoot - approximateRoot) > F.valuation (eval approximateRoot derivative) - F.valuation (eval approximateRoot polynomial)
  uniqueness : ∀ (r : F.carrier), eval r polynomial = 0 → F.valuation (r - approximateRoot) > F.valuation (eval approximateRoot derivative) - F.valuation (eval approximateRoot polynomial) → r = exactRoot

structure HenselsLemmaEvidence {F : FormallyPAdicField} (H : HenselsLemmaPackage F) where
  conditionClosed : H.condition
  rootPropertyClosed : H.rootProperty
  approximationClosed : H.approximation
  uniquenessClosed : H.uniqueness

def HenselsLemmaClosed {F : FormallyPAdicField} (H : HenselsLemmaPackage F) : Prop :=
  H.condition ∧ H.rootProperty ∧ H.approximation ∧ H.uniqueness

theorem hensels_lemma_closed_from_evidence {F : FormallyPAdicField} (H : HenselsLemmaPackage F) (E : HenselsLemmaEvidence H) :
    HenselsLemmaClosed H := by
  exact And.intro E.conditionClosed (And.intro E.rootPropertyClosed (And.intro E.approximationClosed E.uniquenessClosed))

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
