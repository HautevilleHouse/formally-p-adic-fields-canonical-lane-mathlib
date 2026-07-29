import canonicalLaneMathlib.AdmissibleClass
import FormallyPAdicFieldsCanonicalLaneLean.PAdicAnalyticConstruction

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicEvidenceTerms (C : PAdicAnalyticConstruction) where
  completionEvidence : C.closureConstruction
  residueEvidence : C.residueFieldPerfect
  analyticClosed : PAdicAnalyticConstructionClosed C

def PAdicAnalyticConstruction.evidenceTerms (C : PAdicAnalyticConstruction) :
    PAdicEvidenceTerms C :=
  {
    completionEvidence := C.completionClosed
    residueEvidence := C.residuePerfectClosed
    analyticClosed := padic_analytic_construction_closed C
  }

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse