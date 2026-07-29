import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FormallyPAdicFieldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  pAdicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "formally-p-adic-fields-canonical-lane"
    theoremName := "Formally P Adic Fields"
    theoremObject := "PAdicObject"
    classicalBoundary := "unrestricted classical closure carried"
    pAdicConstrainedStatement := "p-adic constrained theorem certificate internalized through admissible-class closure"
    certificateLane := "p_adic_constrained"
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse