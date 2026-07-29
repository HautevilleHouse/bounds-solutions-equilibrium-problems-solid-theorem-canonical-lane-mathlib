import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.SolutionExistence

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundEstimatePackage {E : EquilibriumProblemPackage}
    {S : SolutionExistencePackage E} where
  aPrioriBound : Prop
  stabilityBound : Prop
  errorEstimate : Prop

structure BoundEstimateEvidence {E : EquilibriumProblemPackage}
    {S : SolutionExistencePackage E} (B : BoundEstimatePackage E S) where
  aPrioriBoundClosed : B.aPrioriBound
  stabilityBoundClosed : B.stabilityBound
  errorEstimateClosed : B.errorEstimate

def BoundEstimateClosed {E : EquilibriumProblemPackage}
    {S : SolutionExistencePackage E} (B : BoundEstimatePackage E S) : Prop :=
  B.aPrioriBound ∧ B.stabilityBound ∧ B.errorEstimate

theorem bound_estimate_closed_from_evidence
    {E : EquilibriumProblemPackage} {S : SolutionExistencePackage E}
    (B : BoundEstimatePackage E S) (B' : BoundEstimateEvidence B) :
    BoundEstimateClosed B :=
  And.intro B'.aPrioriBoundClosed
    (And.intro B'.stabilityBoundClosed B'.errorEstimateClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
