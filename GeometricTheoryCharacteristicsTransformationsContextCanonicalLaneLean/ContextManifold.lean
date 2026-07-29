import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure ContextManifold where
  baseSpace : Type
  topology : TopologicalSpace baseSpace
  smoothStructure : Prop
  dimension : Nat
  orientable : Prop

def ContextManifoldClosed (M : ContextManifold) : Prop :=
  M.smoothStructure ∧ M.orientable

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse