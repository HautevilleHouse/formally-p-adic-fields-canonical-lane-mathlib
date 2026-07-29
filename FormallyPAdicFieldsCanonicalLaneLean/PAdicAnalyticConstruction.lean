import canonicalLaneMathlib.AdmissibleClass
import FormallyPAdicFieldsCanonicalLaneLean.PAdicExtensionPackage

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicAnalyticConstruction where
  p : Nat
  hprime : Nat.Prime p
  field : Type
  valued : Valued field ℚₚ
  complete : CompleteSpace field
  closureConstruction : Prop
  residueFieldPerfect : Prop
  completionClosed : closureConstruction
  residuePerfectClosed : residueFieldPerfect

def PAdicAnalyticConstructionClosed (C : PAdicAnalyticConstruction) : Prop :=
  C.closureConstruction ∧ C.residueFieldPerfect

theorem padic_analytic_construction_closed (C : PAdicAnalyticConstruction) :
    PAdicAnalyticConstructionClosed C := by
  exact And.intro C.completionClosed C.residuePerfectClosed

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse