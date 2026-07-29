import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormallyPAdicFieldsCanonicalLaneLean

structure PAdicExtensionPackage where
  p : Nat
  hprime : Nat.Prime p
  baseField : Type
  valuedBase : Valued baseField ℚₚ
  extensionField : Type
  valuedExtension : Valued extensionField ℚₚ
  isFiniteExtension : FiniteDimensional baseField extensionField
  eIndex : ℕ
  fIndex : ℕ
  ramificationIndexDefined : Prop
  inertiaDegreeDefined : Prop

def PAdicExtensionClosed (P : PAdicExtensionPackage) : Prop :=
  P.ramificationIndexDefined ∧ P.inertiaDegreeDefined

end FormallyPAdicFieldsCanonicalLaneLean
end HautevilleHouse