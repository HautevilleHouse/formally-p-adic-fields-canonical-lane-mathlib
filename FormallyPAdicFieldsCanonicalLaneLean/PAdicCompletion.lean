import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicCompletionPackage {V : PAdicValuationPackage} where
  completionField : Type u
  embedding : V.field → completionField
  completeness : Prop
  denseEmbedding : Prop
  completenessTerm : completeness
  denseEmbeddingTerm : denseEmbedding

structure PAdicCompletionEvidence {V : PAdicValuationPackage}
    (C : PAdicCompletionPackage V) where
  completenessClosed : C.completeness
  denseEmbeddingClosed : C.denseEmbedding

def PAdicCompletionClosed {V : PAdicValuationPackage}
    (C : PAdicCompletionPackage V) : Prop :=
  C.completeness ∧ C.denseEmbedding

theorem p_adic_completion_closed_from_evidence
    {V : PAdicValuationPackage} (C : PAdicCompletionPackage V)
    (E : PAdicCompletionEvidence C) : PAdicCompletionClosed C := by
  exact And.intro E.completenessClosed E.denseEmbeddingClosed

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse