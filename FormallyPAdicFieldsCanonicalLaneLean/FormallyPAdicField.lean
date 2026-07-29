import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure FormallyPAdicField where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveGroup : AddGroup carrier
  multiplicativeGroupInUnits : Group (Units carrier)
  valuation : carrier → ℤ
  valuationZero : valuation 0 = ⊤
  valuationOne : valuation 1 = 0
  valuationMul : ∀ x y, valuation (multiplication x y) = valuation x + valuation y
  valuationAdd : ∀ x y, valuation (addition x y) ≥ min (valuation x) (valuation y)
  nonArchimedean : Prop
  residueField : Type v
  residueFieldIsField : Field residueField
  residueMap : carrier → residueField
  kernelIsMaximalIdeal : Prop

structure FormallyPAdicFieldEvidence (F : FormallyPAdicField) where
  nonArchimedeanClosed : F.nonArchimedean
  kernelIsMaximalIdealClosed : F.kernelIsMaximalIdeal

def FormallyPAdicFieldClosed (F : FormallyPAdicField) : Prop :=
  F.nonArchimedean ∧ F.kernelIsMaximalIdeal

theorem formally_padic_field_closed_from_evidence (F : FormallyPAdicField) (E : FormallyPAdicFieldEvidence F) :
    FormallyPAdicFieldClosed F := by
  exact And.intro E.nonArchimedeanClosed E.kernelIsMaximalIdealClosed

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
