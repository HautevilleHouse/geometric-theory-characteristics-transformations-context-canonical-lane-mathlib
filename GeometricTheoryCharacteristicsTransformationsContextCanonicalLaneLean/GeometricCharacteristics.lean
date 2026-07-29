import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure GeometricCharacteristic where
  dimension : Nat
  index : String
  transformLaw : Prop

def GeometricCharacteristicClosed (G : GeometricCharacteristic) : Prop :=
  G.transformLaw

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse