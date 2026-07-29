import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.FormallyPAdicField

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure OstrowskiPackage (F : FormallyPAdicField) where
  allValuations : Set (F.carrier → ℤ)
  trivialValuation : F.carrier → ℤ
  archimedeanValuations : Set (F.carrier → ℝ)
  pAdicValuations : Set (F.carrier → ℤ)
  classification : ∀ (v : F.carrier → ℤ), v ∈ allValuations → (v = trivialValuation) ∨ (v ∈ archimedeanValuations) ∨ (v ∈ pAdicValuations)
  equivalenceRelation : Prop
  uniquePrime : Prop

structure OstrowskiEvidence {F : FormallyPAdicField} (O : OstrowskiPackage F) where
  classificationClosed : O.classification
  equivalenceRelationClosed : O.equivalenceRelation
  uniquePrimeClosed : O.uniquePrime

def OstrowskiClosed {F : FormallyPAdicField} (O : OstrowskiPackage F) : Prop :=
  O.classification ∧ O.equivalenceRelation ∧ O.uniquePrime

theorem ostrowski_closed_from_evidence {F : FormallyPAdicField} (O : OstrowskiPackage F) (E : OstrowskiEvidence O) :
    OstrowskiClosed O := by
  exact And.intro E.classificationClosed (And.intro E.equivalenceRelationClosed E.uniquePrimeClosed)

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
