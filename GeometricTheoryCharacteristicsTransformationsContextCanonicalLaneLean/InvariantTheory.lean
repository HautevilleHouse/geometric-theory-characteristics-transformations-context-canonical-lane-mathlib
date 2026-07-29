import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

structure InvariantTheoryPackage where
  invariantPolynomials : Prop
  characterTable : Prop
  irrepDecomposition : Prop
  molienSeries : Prop

def InvariantTheoryClosed (I : InvariantTheoryPackage) : Prop :=
  I.invariantPolynomials ∧ I.characterTable ∧ I.irrepDecomposition ∧ I.molienSeries

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse