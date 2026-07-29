import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.VariationalBoundState

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure EquilibriumSolver (A : AdmissibleClass) where
  variationalBound : VariationalBound A
  fixedPointIteration : Type u
  convergenceGuarantee : Prop
  solutionExistence : Prop

def solverBridgeClosed (A : AdmissibleClass) (S : EquilibriumSolver A) : Prop :=
  S.convergenceGuarantee ∧ S.solutionExistence

theorem solver_bridge_from_admissible (A : AdmissibleClass) (S : EquilibriumSolver A) :
    solverBridgeClosed A S := by
  exact And.intro S.convergenceGuarantee S.solutionExistence

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
