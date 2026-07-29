import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure CharacteristicClassPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  characteristicClass : manifold → ℤ
  invariantUnderHomotopy : Prop
  additiveUnderConnectedSum : Prop

structure CharacteristicClassEvidence (C : CharacteristicClassPackage) where
  invariantUnderHomotopyClosed : C.invariantUnderHomotopy
  additiveUnderConnectedSumClosed : C.additiveUnderConnectedSum

def CharacteristicClassClosed (C : CharacteristicClassPackage) : Prop :=
  C.invariantUnderHomotopy ∧ C.additiveUnderConnectedSum

theorem characteristic_class_closed_from_evidence (C : CharacteristicClassPackage) (E : CharacteristicClassEvidence C) :
    CharacteristicClassClosed C := by
  exact And.intro E.invariantUnderHomotopyClosed E.additiveUnderConnectedSumClosed

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
