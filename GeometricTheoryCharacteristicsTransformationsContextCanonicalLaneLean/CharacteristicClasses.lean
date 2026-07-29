import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure CharacteristicClassPackage where
  baseSpace : Type u
  topSpace : TopologicalSpace baseSpace
  rank : Nat
  characteristicFormDegree : Nat
  chernClassDefined : Prop
  pontryaginClassDefined : Prop
  eulerClassDefined : Prop

structure CharacteristicClassEvidence (C : CharacteristicClassPackage) where
  chernClassDefinedClosed : C.chernClassDefined
  pontryaginClassDefinedClosed : C.pontryaginClassDefined
  eulerClassDefinedClosed : C.eulerClassDefined

def CharacteristicClassClosed (C : CharacteristicClassPackage) : Prop :=
  C.chernClassDefined ∧ C.pontryaginClassDefined ∧ C.eulerClassDefined

theorem characteristic_class_closed_from_evidence (C : CharacteristicClassPackage)
    (E : CharacteristicClassEvidence C) : CharacteristicClassClosed C := by
  exact And.intro E.chernClassDefinedClosed (And.intro E.pontryaginClassDefinedClosed E.eulerClassDefinedClosed)

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
