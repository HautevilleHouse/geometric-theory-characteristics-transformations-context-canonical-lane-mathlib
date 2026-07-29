import canonicalLaneMathlib.AdmissibleClass

/-!
# Morse Theory Package
-/

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure MorseTheoryPackage where
  morseFunctionExistence : Prop
  gradientFlowTransversal : Prop
  cellAttachment : Prop
  morseInequalities : Prop

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  morseFunctionExistenceClosed : M.morseFunctionExistence
  gradientFlowTransversalClosed : M.gradientFlowTransversal
  cellAttachmentClosed : M.cellAttachment
  morseInequalitiesClosed : M.morseInequalities

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.morseFunctionExistence ∧ M.gradientFlowTransversal ∧ M.cellAttachment ∧ M.morseInequalities

theorem morse_theory_closed_from_evidence
    (M : MorseTheoryPackage) (E : MorseTheoryEvidence M) :
    MorseTheoryClosed M := by
  exact And.intro E.morseFunctionExistenceClosed
    (And.intro E.gradientFlowTransversalClosed
      (And.intro E.cellAttachmentClosed E.morseInequalitiesClosed))

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse
