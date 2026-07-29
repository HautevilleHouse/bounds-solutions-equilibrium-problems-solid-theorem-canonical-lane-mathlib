import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.BridgeLemmas
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

def ConstrainedBoundsSolutionsEquilibriumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bounds_solutions_equilibrium_endgame (A : AdmissibleClass) :
    ConstrainedBoundsSolutionsEquilibriumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse