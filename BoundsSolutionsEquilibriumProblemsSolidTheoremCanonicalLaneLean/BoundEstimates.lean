import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.SolidMechanicsEquilibrium

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundEstimatesPackage {P : EquilibriumExistencePackage}
    (S : SolidMechanicsEquilibriumPackage P) where
  stabilityInequality : Prop
  maximumPrincipleApplied : Prop
  errorBoundedByConstants : Prop
  aPrioriEstimate : Prop

structure BoundEstimatesEvidence {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} (B : BoundEstimatesPackage S) where
  stabilityInequalityClosed : B.stabilityInequality
  maximumPrincipleAppliedClosed : B.maximumPrincipleApplied
  errorBoundedByConstantsClosed : B.errorBoundedByConstants
  aPrioriEstimateClosed : B.aPrioriEstimate

def BoundEstimatesClosed {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} (B : BoundEstimatesPackage S) : Prop :=
  B.stabilityInequality ∧ B.maximumPrincipleApplied ∧
  B.errorBoundedByConstants ∧ B.aPrioriEstimate

theorem bound_estimates_closed_from_evidence {P : EquilibriumExistencePackage}
    {S : SolidMechanicsEquilibriumPackage P} (B : BoundEstimatesPackage S)
    (E : BoundEstimatesEvidence B) : BoundEstimatesClosed B := by
  exact And.intro E.stabilityInequalityClosed
    (And.intro E.maximumPrincipleAppliedClosed
      (And.intro E.errorBoundedByConstantsClosed E.aPrioriEstimateClosed))

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse