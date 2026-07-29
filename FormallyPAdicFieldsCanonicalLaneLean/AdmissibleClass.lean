import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure AdmissibleClass where
  object : PAdicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PAdicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse