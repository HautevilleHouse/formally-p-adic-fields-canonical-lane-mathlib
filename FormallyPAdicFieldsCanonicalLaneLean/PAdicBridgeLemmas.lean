import canonicalLaneMathlib.AdmissibleClass
import FormallyPAdicFieldsCanonicalLaneLean.PAdicAdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PAdicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse