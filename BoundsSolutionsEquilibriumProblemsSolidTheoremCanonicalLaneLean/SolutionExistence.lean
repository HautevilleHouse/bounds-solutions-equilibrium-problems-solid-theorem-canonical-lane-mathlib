import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.SolidTheoremObjects

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundsPackage where
  domain : Type u
  lowerBound : ℝ
  upperBound : ℝ
  boundaryConditions : Prop
  coercivity : Prop

structure BoundsEvidence (B : BoundsPackage) where
  boundaryConditionsClosed : B.boundaryConditions
  coercivityClosed : B.coercivity

def BoundsClosed (B : BoundsPackage) : Prop :=
  B.boundaryConditions ∧ B.coercivity

theorem bounds_closed_from_evidence (B : BoundsPackage) (E : BoundsEvidence B) : BoundsClosed B := by
  exact And.intro E.boundaryConditionsClosed E.coercivityClosed

structure EquilibriumPackage (B : BoundsPackage) where
  energyFunctional : Type v
  minimizerExists : Prop
  eulerLagrangeEquation : Prop

structure EquilibriumEvidence {B : BoundsPackage} (E : EquilibriumPackage B) where
  minimizerExistsClosed : E.minimizerExists
  eulerLagrangeEquationClosed : E.eulerLagrangeEquation

def EquilibriumClosed {B : BoundsPackage} (E : EquilibriumPackage B) : Prop :=
  E.minimizerExists ∧ E.eulerLagrangeEquation

theorem equilibrium_closed_from_evidence {B : BoundsPackage} (E : EquilibriumPackage B) (Ev : EquilibriumEvidence E) : EquilibriumClosed E := by
  exact And.intro Ev.minimizerExistsClosed Ev.eulerLagrangeEquationClosed

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse