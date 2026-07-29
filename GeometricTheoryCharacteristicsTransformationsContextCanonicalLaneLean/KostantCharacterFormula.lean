import canonicalLaneMathlib.AdmissibleClass

/-!
# Kostant Character Formula Package
-/

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure KostantCharacterFormulaPackage where
  weylGroupAction : Prop
  signedSumOverWeights : Prop
  multiplicityFormula : Prop
  characterPolyhedron : Prop

structure KostantCharacterFormulaEvidence (K : KostantCharacterFormulaPackage) where
  weylGroupActionClosed : K.weylGroupAction
  signedSumOverWeightsClosed : K.signedSumOverWeights
  multiplicityFormulaClosed : K.multiplicityFormula
  characterPolyhedronClosed : K.characterPolyhedron

def KostantCharacterFormulaClosed (K : KostantCharacterFormulaPackage) : Prop :=
  K.weylGroupAction ∧ K.signedSumOverWeights ∧ K.multiplicityFormula ∧ K.characterPolyhedron

theorem kostant_character_formula_closed_from_evidence
    (K : KostantCharacterFormulaPackage) (E : KostantCharacterFormulaEvidence K) :
    KostantCharacterFormulaClosed K := by
  exact And.intro E.weylGroupActionClosed
    (And.intro E.signedSumOverWeightsClosed
      (And.intro E.multiplicityFormulaClosed E.characterPolyhedronClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
