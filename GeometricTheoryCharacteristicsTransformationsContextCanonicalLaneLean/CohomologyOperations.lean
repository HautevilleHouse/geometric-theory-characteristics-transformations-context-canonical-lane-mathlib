import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure CohomologyOperationsPackage where
  steenrodSquares : Prop
  chernClassesDefined : Prop
  thomIsomorphism : Prop
  gysinSequence : Prop

def CohomologyOperationsClosed (C : CohomologyOperationsPackage) : Prop :=
  C.steenrodSquares ∧ C.chernClassesDefined ∧ C.thomIsomorphism ∧ C.gysinSequence

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse