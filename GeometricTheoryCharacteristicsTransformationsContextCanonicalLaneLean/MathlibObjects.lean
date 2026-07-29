import GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure Space where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : Space
  propertyOne : Prop
  propertyTwo : Prop
  conclusion : propertyOne ∧ propertyTwo

structure EndgameState where
  object : AdmittedObject

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.propertyOne ∧ O.propertyTwo

end GeometricTheoryCharacteristicsTransformationsContextCanonicalLaneLean
end HautevilleHouse