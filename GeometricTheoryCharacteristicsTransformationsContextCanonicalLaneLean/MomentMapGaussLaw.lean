import canonicalLaneMathlib.AdmissibleClass

/-!
# Moment Map and Gauss Law Package
-/

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure MomentMapGaussLawPackage where
  equivariantMomentMap : Prop
  gaussLawConstraint : Prop
  constraintSurfaceCoadjoint : Prop
  reductionConsistent : Prop

structure MomentMapGaussLawEvidence (M : MomentMapGaussLawPackage) where
  equivariantMomentMapClosed : M.equivariantMomentMap
  gaussLawConstraintClosed : M.gaussLawConstraint
  constraintSurfaceCoadjointClosed : M.constraintSurfaceCoadjoint
  reductionConsistentClosed : M.reductionConsistent

def MomentMapGaussLawClosed (M : MomentMapGaussLawPackage) : Prop :=
  M.equivariantMomentMap ∧ M.gaussLawConstraint ∧ M.constraintSurfaceCoadjoint ∧ M.reductionConsistent

theorem moment_map_gauss_law_closed_from_evidence
    (M : MomentMapGaussLawPackage) (E : MomentMapGaussLawEvidence M) :
    MomentMapGaussLawClosed M := by
  exact And.intro E.equivariantMomentMapClosed
    (And.intro E.gaussLawConstraintClosed
      (And.intro E.constraintSurfaceCoadjointClosed E.reductionConsistentClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
