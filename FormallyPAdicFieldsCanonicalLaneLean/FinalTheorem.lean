import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.FormallyPAdicField
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.ValuationExtension
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.ResidueField
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.OstrowskiTheorem
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.HenselsLemma

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

def ConstrainedFormallyPAdicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_formally_padic_endgame (A : AdmissibleClass) :
    ConstrainedFormallyPAdicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
