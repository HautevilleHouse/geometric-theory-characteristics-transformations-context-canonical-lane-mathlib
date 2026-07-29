import GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def projection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem projection_idempotent (x : EndgameState) :
    projection.toFun (projection.toFun x) = projection.toFun x := by
  exact projection.idempotent x

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse