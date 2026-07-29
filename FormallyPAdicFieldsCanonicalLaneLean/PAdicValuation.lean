import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicValuationPackage where
  field : Type u
  valuation : field → ℤ
  nonarchimedean : Prop
  valueGroup : Type v
  uniformizer : field
  residueField : Type w
  uniformizerValuationOne : valuation uniformizer = 1
  nonarchimedeanTerm : nonarchimedean

structure PAdicValuationEvidence (V : PAdicValuationPackage) where
  uniformizerValuationOneClosed : V.uniformizerValuationOne
  nonarchimedeanClosed : V.nonarchimedean

def PAdicValuationClosed (V : PAdicValuationPackage) : Prop :=
  V.uniformizerValuationOne ∧ V.nonarchimedean

theorem p_adic_valuation_closed_from_evidence (V : PAdicValuationPackage)
    (E : PAdicValuationEvidence V) : PAdicValuationClosed V := by
  exact And.intro E.uniformizerValuationOneClosed E.nonarchimedeanClosed

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse