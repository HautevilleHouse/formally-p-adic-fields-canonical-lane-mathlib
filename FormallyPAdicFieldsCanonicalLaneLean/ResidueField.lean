import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.FormallyPAdicField

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure ResidueFieldPackage (F : FormallyPAdicField) where
  residueField : Type v
  isFiniteField : Bool
  char : ℕ
  residueFieldEmbedding : F.residueField → residueField
  isomorphism : Prop
  galoisGroup : Type u
  galoisAction : galoisGroup → residueField → residueField
  frobeniusEndomorphism : residueField → residueField
  frobeniusIsAutomorphism : Prop
  separableClosure : Prop
  algebraicClosure : Prop

structure ResidueFieldEvidence {F : FormallyPAdicField} (R : ResidueFieldPackage F) where
  isomorphismClosed : R.isomorphism
  frobeniusIsAutomorphismClosed : R.frobeniusIsAutomorphism
  separableClosureClosed : R.separableClosure
  algebraicClosureClosed : R.algebraicClosure

def ResidueFieldClosed {F : FormallyPAdicField} (R : ResidueFieldPackage F) : Prop :=
  R.isomorphism ∧ R.frobeniusIsAutomorphism ∧ R.separableClosure ∧ R.algebraicClosure

theorem residue_field_closed_from_evidence {F : FormallyPAdicField} (R : ResidueFieldPackage F) (E : ResidueFieldEvidence R) :
    ResidueFieldClosed R := by
  exact And.intro E.isomorphismClosed (And.intro E.frobeniusIsAutomorphismClosed (And.intro E.separableClosureClosed E.algebraicClosureClosed))

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse
