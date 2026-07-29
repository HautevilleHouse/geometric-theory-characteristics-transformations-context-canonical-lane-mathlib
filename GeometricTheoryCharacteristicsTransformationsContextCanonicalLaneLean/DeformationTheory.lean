import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure DeformationContext where
  sourceObject : Type u
  targetObject : Type v
  transformationFamily : Set (sourceObject → targetObject)
  continuity : Prop
  smoothness : Prop

structure DeformationEvidence (D : DeformationContext) where
  continuityClosed : D.continuity
  smoothnessClosed : D.smoothness

def DeformationClosed (D : DeformationContext) : Prop :=
  D.continuity ∧ D.smoothness

theorem deformation_closed_from_evidence (D : DeformationContext) (E : DeformationEvidence D) :
    DeformationClosed D := by
  exact And.intro E.continuityClosed E.smoothnessClosed

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
