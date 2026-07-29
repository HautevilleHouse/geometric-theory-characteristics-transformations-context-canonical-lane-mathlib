import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure EquivariantCohomologyPackage where
  borelConstruction : Prop
  localizationTheorem : Prop
  fixedPointFormula : Prop
  equivariantCharacteristicClasses : Prop

def EquivariantCohomologyClosed (E : EquivariantCohomologyPackage) : Prop :=
  E.borelConstruction ∧ E.localizationTheorem ∧ E.fixedPointFormula ∧ E.equivariantCharacteristicClasses

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse