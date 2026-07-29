import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure TransformationGroup where
  underlyingGroup : Type u
  groupOperation : underlyingGroup → underlyingGroup → underlyingGroup
  identityElement : underlyingGroup
  inverseElement : underlyingGroup → underlyingGroup
  groupLaws : Prop
  smoothStructure : Prop

structure TransformationGroupEvidence (G : TransformationGroup) where
  groupLawsClosed : G.groupLaws
  smoothStructureClosed : G.smoothStructure

def TransformationGroupClosed (G : TransformationGroup) : Prop :=
  G.groupLaws ∧ G.smoothStructure

theorem transformation_group_closed_from_evidence (G : TransformationGroup) (E : TransformationGroupEvidence G) :
    TransformationGroupClosed G := by
  exact And.intro E.groupLawsClosed E.smoothStructureClosed

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
