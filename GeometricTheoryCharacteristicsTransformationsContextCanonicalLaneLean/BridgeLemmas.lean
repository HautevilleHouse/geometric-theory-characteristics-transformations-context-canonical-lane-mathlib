import GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse