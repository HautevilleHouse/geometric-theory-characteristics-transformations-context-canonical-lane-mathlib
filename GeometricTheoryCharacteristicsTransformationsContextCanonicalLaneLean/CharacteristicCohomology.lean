import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure CharacteristicCohomology where
  cohomologyRing : Type
  characteristicClasses : List String
  vanishingTheorem : Prop
  nontrivialExample : Prop

def CharacteristicCohomologyClosed (C : CharacteristicCohomology) : Prop :=
  C.vanishingTheorem ∧ C.nontrivialExample

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse