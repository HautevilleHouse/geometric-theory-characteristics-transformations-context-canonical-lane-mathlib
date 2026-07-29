import canonicalLaneMathlib.AdmissibleClass

/-!
# Symplectic Reduction Package
-/

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure SymplecticReductionPackage where
  momentMapAdmissible : Prop
  reducedSpaceSymplectic : Prop
  quotientSmooth : Prop
  marsdenWeinsteinTheorem : Prop

structure SymplecticReductionEvidence (S : SymplecticReductionPackage) where
  momentMapAdmissibleClosed : S.momentMapAdmissible
  reducedSpaceSymplecticClosed : S.reducedSpaceSymplectic
  quotientSmoothClosed : S.quotientSmooth
  marsdenWeinsteinTheoremClosed : S.marsdenWeinsteinTheorem

def SymplecticReductionClosed (S : SymplecticReductionPackage) : Prop :=
  S.momentMapAdmissible ∧ S.reducedSpaceSymplectic ∧ S.quotientSmooth ∧ S.marsdenWeinsteinTheorem

theorem symplectic_reduction_closed_from_evidence
    (S : SymplecticReductionPackage) (E : SymplecticReductionEvidence S) :
    SymplecticReductionClosed S := by
  exact And.intro E.momentMapAdmissibleClosed
    (And.intro E.reducedSpaceSymplecticClosed
      (And.intro E.quotientSmoothClosed E.marsdenWeinsteinTheoremClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
