import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.FormallyPAdicField

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure ValuationExtensionPackage (F : FormallyPAdicField) where
  extensionField : Type u
  extendValuation : extensionField → ℤ
  compatibility : ∀ x : F.carrier, extendValuation (algebraMap F.carrier extensionField x) = F.valuation x
  uniqueExtension : ∀ (v : extensionField → ℤ), (∀ x : F.carrier, v (algebraMap F.carrier extensionField x) = F.valuation x) → v = extendValuation
  discrete : Prop
  completeness : Prop

structure ValuationExtensionEvidence {F : FormallyPAdicField} (V : ValuationExtensionPackage F) where
  uniqueExtensionClosed : V.uniqueExtension
  discreteClosed : V.discrete
  completenessClosed : V.completeness

def ValuationExtensionClosed {F : FormallyPAdicField} (V : ValuationExtensionPackage F) : Prop :=
  V.uniqueExtension ∧ V.discrete ∧ V.completeness

theorem valuation_extension_closed_from_evidence {F : FormallyPAdicField} (V : ValuationExtensionPackage F) (E : ValuationExtensionEvidence V) :
    ValuationExtensionClosed V := by
  exact And.intro E.uniqueExtensionClosed (And.intro E.discreteClosed E.completenessClosed)

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
