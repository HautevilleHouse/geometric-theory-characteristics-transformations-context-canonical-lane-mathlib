import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure IndexTheoryPackage where
  atiyahSingerIndexTheorem : Prop
  chernCharacterDefined : Prop
  toddClassDefined : Prop
  indexComputed : Prop

def IndexTheoryClosed (I : IndexTheoryPackage) : Prop :=
  I.atiyahSingerIndexTheorem ∧ I.chernCharacterDefined ∧ I.toddClassDefined ∧ I.indexComputed

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse