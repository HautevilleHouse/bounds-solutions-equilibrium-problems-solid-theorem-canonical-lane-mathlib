import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.BoundEstimates

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolutionRegularityPackage {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} (B : BoundEstimatesPackage S) where
  weakSolutionExists : Prop
  regularityGained : Prop
  strongSolutionUnique : Prop
  stabilityConvergence : Prop

structure SolutionRegularityEvidence {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} {B : BoundEstimatesPackage S}
    (R : SolutionRegularityPackage B) where
  weakSolutionExistsClosed : R.weakSolutionExists
  regularityGainedClosed : R.regularityGained
  strongSolutionUniqueClosed : R.strongSolutionUnique
  stabilityConvergenceClosed : R.stabilityConvergence

def SolutionRegularityClosed {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} {B : BoundEstimatesPackage S}
    (R : SolutionRegularityPackage B) : Prop :=
  R.weakSolutionExists ∧ R.regularityGained ∧
  R.strongSolutionUnique ∧ R.stabilityConvergence

theorem solution_regularity_closed_from_evidence {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} {B : BoundEstimatesPackage S}
    (R : SolutionRegularityPackage B) (E : SolutionRegularityEvidence R) :
    SolutionRegularityClosed R := by
  exact And.intro E.weakSolutionExistsClosed
    (And.intro E.regularityGainedClosed
      (And.intro E.strongSolutionUniqueClosed E.stabilityConvergenceClosed))

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse