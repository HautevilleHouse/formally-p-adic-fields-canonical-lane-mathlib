import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

def ConstrainedPAdicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_p_adic_endgame (A : AdmissibleClass) :
    ConstrainedPAdicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse