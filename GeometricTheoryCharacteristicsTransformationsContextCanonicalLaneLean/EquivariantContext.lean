import canonicalLaneMathlib.AdmissibleClass
import GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean.CharacteristicClasses

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure EquivariantContextPackage {C : CharacteristicClassPackage}
    (CC : CharacteristicClassClosed C) where
  groupAction : Type u
  equivariantCharacteristicClass : Prop
  localisationFixedPoint : Prop

structure EquivariantContextEvidence {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (E : EquivariantContextPackage CC) where
  equivariantCharacteristicClassClosed : E.equivariantCharacteristicClass
  localisationFixedPointClosed : E.localisationFixedPoint

def EquivariantContextClosed {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (E : EquivariantContextPackage CC) : Prop :=
  E.equivariantCharacteristicClass ∧ E.localisationFixedPoint

theorem equivariant_context_closed_from_evidence {C : CharacteristicClassPackage}
    {CC : CharacteristicClassClosed C} (E : EquivariantContextPackage CC)
    (Ev : EquivariantContextEvidence E) : EquivariantContextClosed E := by
  exact And.intro Ev.equivariantCharacteristicClassClosed Ev.localisationFixedPointClosed

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
