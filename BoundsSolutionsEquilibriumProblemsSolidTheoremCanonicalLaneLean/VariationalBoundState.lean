import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure VariationalBound (A : AdmissibleClass) where
  lowerBound : ℝ
  upperBound : ℝ
  boundsAdmissible : lowerBound ≤ upperBound
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  solutionSet : Set stateSpace
  equilibriumCondition : solutionSet.Nonempty
  boundClosed : Prop

def ConstrainedVariationalBound (A : AdmissibleClass) : Prop :=
  let B : VariationalBound A := default
  B.boundClosed

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
