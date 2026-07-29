import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PAdicAdmittedObject where
  space : PAdicSpace
  isPAdicField : Prop
  residueFieldPerfect : Prop
  discreteValuation : Prop
  completeness : Prop
  conclusion : isPAdicField ∧ residueFieldPerfect ∧ discreteValuation ∧ completeness

def PAdicWitnessClosed (O : PAdicAdmittedObject) : Prop :=
  O.conclusion

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse