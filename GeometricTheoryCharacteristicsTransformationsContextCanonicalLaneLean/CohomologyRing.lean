import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure CohomologyRing where
  cohomologyGroups : ℕ → Type u
  ringProduct : Π n m, cohomologyGroups n → cohomologyGroups m → cohomologyGroups (n + m)
  associativity : Prop
  gradedCommutativity : Prop
  unitElement : Prop

structure CohomologyRingEvidence (H : CohomologyRing) where
  associativityClosed : H.associativity
  gradedCommutativityClosed : H.gradedCommutativity
  unitElementClosed : H.unitElement

def CohomologyRingClosed (H : CohomologyRing) : Prop :=
  H.associativity ∧ H.gradedCommutativity ∧ H.unitElement

theorem cohomology_ring_closed_from_evidence (H : CohomologyRing) (E : CohomologyRingEvidence H) :
    CohomologyRingClosed H := by
  exact And.intro E.associativityClosed (And.intro E.gradedCommutativityClosed E.unitElementClosed)

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
