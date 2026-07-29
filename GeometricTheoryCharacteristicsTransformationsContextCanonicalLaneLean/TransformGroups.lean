import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure TransformGroupsPackage where
  lieGroupAction : Prop
  homogeneousSpace : Prop
  orbitStructure : Prop
  isotropyRepresentation : Prop

def TransformGroupsClosed (T : TransformGroupsPackage) : Prop :=
  T.lieGroupAction ∧ T.homogeneousSpace ∧ T.orbitStructure ∧ T.isotropyRepresentation

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse