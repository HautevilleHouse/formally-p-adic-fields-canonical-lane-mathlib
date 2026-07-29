import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicHenselPackage {V : PAdicValuationPackage}
    {C : PAdicCompletionPackage V} where
  henselLemma : Prop
  liftingRoots : Prop
  henselLemmaTerm : henselLemma
  liftingRootsTerm : liftingRoots

structure PAdicHenselEvidence {V : PAdicValuationPackage}
    {C : PAdicCompletionPackage V} (H : PAdicHenselPackage V C) where
  henselLemmaClosed : H.henselLemma
  liftingRootsClosed : H.liftingRoots

def PAdicHenselClosed {V : PAdicValuationPackage}
    {C : PAdicCompletionPackage V} (H : PAdicHenselPackage V C) : Prop :=
  H.henselLemma ∧ H.liftingRoots

theorem p_adic_hensel_closed_from_evidence
    {V : PAdicValuationPackage} {C : PAdicCompletionPackage V}
    (H : PAdicHenselPackage V C) (E : PAdicHenselEvidence H) :
    PAdicHenselClosed H := by
  exact And.intro E.henselLemmaClosed E.liftingRootsClosed

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse