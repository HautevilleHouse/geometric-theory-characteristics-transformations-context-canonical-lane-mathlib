import canonicalLaneMathlib.AdmissibleClass

/-!
# Lefschetz Fixed Point Package
-/

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure LefschetzFixedPointPackage where
  traceFormula : Prop
  fixedPointSetCompact : Prop
  multiplicityFinite : Prop
  globalIndexFormula : Prop

structure LefschetzFixedPointEvidence (L : LefschetzFixedPointPackage) where
  traceFormulaClosed : L.traceFormula
  fixedPointSetCompactClosed : L.fixedPointSetCompact
  multiplicityFiniteClosed : L.multiplicityFinite
  globalIndexFormulaClosed : L.globalIndexFormula

def LefschetzFixedPointClosed (L : LefschetzFixedPointPackage) : Prop :=
  L.traceFormula ∧ L.fixedPointSetCompact ∧ L.multiplicityFinite ∧ L.globalIndexFormula

theorem lefschetz_fixed_point_closed_from_evidence
    (L : LefschetzFixedPointPackage) (E : LefschetzFixedPointEvidence L) :
    LefschetzFixedPointClosed L := by
  exact And.intro E.traceFormulaClosed
    (And.intro E.fixedPointSetCompactClosed
      (And.intro E.multiplicityFiniteClosed E.globalIndexFormulaClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
