import canonicalLaneMathlib.AdmissibleClass
import GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean.CharacteristicClasses

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure TransformationLawPackage {C : CharacteristicClassPackage}
    (CC : CharacteristicClassClosed C) where
  naturalUnderPullback : Prop
  naturalUnderPushforward : Prop
  functoriality : Prop
  additiveUnderConnectedSum : Prop

structure TransformationLawEvidence {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (T : TransformationLawPackage CC) where
  naturalUnderPullbackClosed : T.naturalUnderPullback
  naturalUnderPushforwardClosed : T.naturalUnderPushforward
  functorialityClosed : T.functoriality
  additiveUnderConnectedSumClosed : T.additiveUnderConnectedSum

def TransformationLawClosed {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (T : TransformationLawPackage CC) : Prop :=
  T.naturalUnderPullback ∧ T.naturalUnderPushforward ∧ T.functoriality ∧ T.additiveUnderConnectedSum

theorem transformation_law_closed_from_evidence {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (T : TransformationLawPackage CC)
    (E : TransformationLawEvidence T) : TransformationLawClosed T := by
  exact And.intro E.naturalUnderPullbackClosed (And.intro E.naturalUnderPushforwardClosed
    (And.intro E.functorialityClosed E.additiveUnderConnectedSumClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
