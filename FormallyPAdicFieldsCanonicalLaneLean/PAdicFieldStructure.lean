import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicFieldPackage where
  fieldType : Type u
  valuationRing : Prop
  maximalIdeal : Prop
  residueField : Type v
  primeElement : fieldType
  uniformizer : fieldType
  absoluteValue : fieldType → ℝ
  completion : Prop
  henselian : Prop
  structureClosed : Prop

structure PAdicFieldEvidence (F : PAdicFieldPackage) where
  valuationRingClosed : F.valuationRing
  maximalIdealClosed : F.maximalIdeal
  residueFieldPerfect : F.residueFieldPerfect
  primeElementClosed : True
  uniformizerClosed : True
  absoluteValueClosed : True
  completionClosed : F.completion
  henselianClosed : F.henselian
  structureClosed : F.structureClosed

def PAdicFieldClosed (F : PAdicFieldPackage) : Prop :=
  F.valuationRing ∧ F.maximalIdeal ∧ F.completion ∧ F.henselian ∧ F.structureClosed

theorem p_adic_field_closed_from_evidence (F : PAdicFieldPackage) (E : PAdicFieldEvidence F) :
    PAdicFieldClosed F := by
  exact And.intro E.valuationRingClosed (And.intro E.maximalIdealClosed (And.intro E.completionClosed (And.intro E.henselianClosed E.structureClosed)))

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse