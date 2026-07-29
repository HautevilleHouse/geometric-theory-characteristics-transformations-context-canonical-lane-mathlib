import canonicalLaneMathlib.AdmissibleClass

/-!
# Index Theorem Package
-/

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperatorAdmissible : Prop
  analyticIndexEqualsTopologicalIndex : Prop
  chernCharacterConstruction : Prop
  toddClassUsed : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  ellipticOperatorAdmissibleClosed : I.ellipticOperatorAdmissible
  analyticIndexEqualsTopologicalIndexClosed : I.analyticIndexEqualsTopologicalIndex
  chernCharacterConstructionClosed : I.chernCharacterConstruction
  toddClassUsedClosed : I.toddClassUsed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.ellipticOperatorAdmissible ∧ I.analyticIndexEqualsTopologicalIndex ∧ I.chernCharacterConstruction ∧ I.toddClassUsed

theorem index_theorem_closed_from_evidence
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.ellipticOperatorAdmissibleClosed
    (And.intro E.analyticIndexEqualsTopologicalIndexClosed
      (And.intro E.chernCharacterConstructionClosed E.toddClassUsedClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
