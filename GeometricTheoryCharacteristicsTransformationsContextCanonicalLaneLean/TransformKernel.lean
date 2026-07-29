import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure TransformKernelPackage where
  kernelType : String
  integralOperator : Prop
  boundedness : Prop
  continuity : Prop

def TransformKernelClosed (K : TransformKernelPackage) : Prop :=
  K.boundedness ∧ K.continuity

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse