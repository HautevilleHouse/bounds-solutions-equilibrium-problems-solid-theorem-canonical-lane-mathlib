import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EquilibriumState where
  point : BoundSpace
  equilibriumCondition : Prop

structure SolidContainer where
  container : BoundSpace
  convex : Prop
  compact : Prop

structure AdmittedObject where
  space : BoundSpace
  solid : SolidContainer
  equilibrium : EquilibriumState
  solutionExists : Prop
  conclusion : solutionExists

def BoundsWitnessClosed (O : AdmittedObject) : Prop :=
  O.solutionExists

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse