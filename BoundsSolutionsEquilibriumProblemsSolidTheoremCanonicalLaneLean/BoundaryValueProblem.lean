import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundaryValueProblem where
  domain : Type u
  domainBoundary : Type v
  differentialOperator : Type w
  boundaryCondition : Prop
  solutionSpace : Prop
  weakFormulation : Prop

structure BoundaryValueEvidence (B : BoundaryValueProblem) where
  boundaryConditionClosed : B.boundaryCondition
  solutionSpaceClosed : B.solutionSpace
  weakFormulationClosed : B.weakFormulation

def BoundaryValueClosed (B : BoundaryValueProblem) : Prop :=
  B.boundaryCondition ∧ B.solutionSpace ∧ B.weakFormulation

theorem boundary_value_closed_from_evidence (B : BoundaryValueProblem) (E : BoundaryValueEvidence B) : BoundaryValueClosed B := by
  exact And.intro E.boundaryConditionClosed (And.intro E.solutionSpaceClosed E.weakFormulationClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse