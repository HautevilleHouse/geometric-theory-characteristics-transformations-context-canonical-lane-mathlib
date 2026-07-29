import canonicalLaneMathlib.AdmissibleClass
import GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean.CharacteristicClasses

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure CobordismInvariancePackage {C : CharacteristicClassPackage}
    (CC : CharacteristicClassClosed C) where
  cobordantManifolds : Prop
  characteristicClassInvariant : Prop
  transformationUnderCobordism : Prop

structure CobordismInvarianceEvidence {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (CI : CobordismInvariancePackage CC) where
  cobordantManifoldsClosed : CI.cobordantManifolds
  characteristicClassInvariantClosed : CI.characteristicClassInvariant
  transformationUnderCobordismClosed : CI.transformationUnderCobordism

def CobordismInvarianceClosed {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (CI : CobordismInvariancePackage CC) : Prop :=
  CI.cobordantManifolds ∧ CI.characteristicClassInvariant ∧ CI.transformationUnderCobordism

theorem cobordism_invariance_closed_from_evidence {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (CI : CobordismInvariancePackage CC)
    (E : CobordismInvarianceEvidence CI) : CobordismInvarianceClosed CI := by
  exact And.intro E.cobordantManifoldsClosed (And.intro E.characteristicClassInvariantClosed E.transformationUnderCobordismClosed)

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
