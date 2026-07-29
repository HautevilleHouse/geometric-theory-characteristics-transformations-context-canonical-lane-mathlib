import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

def ConstrainedGeometricTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_theory_endgame (A : AdmissibleClass) :
    ConstrainedGeometricTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
