import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicAdmittedObject where
  p : Nat
  hprime : Nat.Prime p
  carrier : Type
  topology : TopologicalSpace carrier
  valuedField : Valued carrier ℚₚ
  complete : CompleteSpace carrier
  discretelyValued : IsDiscreteValuation (Valued.v : carrier → ℚₚ)
  conclusion : True

def PAdicWitnessClosed (O : PAdicAdmittedObject) : Prop :=
  O.conclusion

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse