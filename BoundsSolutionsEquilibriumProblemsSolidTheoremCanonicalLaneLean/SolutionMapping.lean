import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.FixedPointSolid

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolutionMappingPackage {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} {F : FixedPointSolidPackage B E} where
  solutionFunction : ℝ → ℝ
  mappingToFixedPoint : Prop
  solutionExists : Prop
  solutionUnique : Prop
  closedness : Prop

def SolutionMappingClosed {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} {F : FixedPointSolidPackage B E} (S : SolutionMappingPackage B E F) : Prop :=
  S.solutionExists ∧ S.solutionUnique ∧ S.closedness

structure SolutionMappingEvidence {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} {F : FixedPointSolidPackage B E} (S : SolutionMappingPackage B E F) where
  solutionExistsClosed : S.solutionExists
  solutionUniqueClosed : S.solutionUnique
  closednessClosed : S.closedness

theorem solution_mapping_closed_from_evidence {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} {F : FixedPointSolidPackage B E} (S : SolutionMappingPackage B E F) (Ev : SolutionMappingEvidence S) : SolutionMappingClosed S := by
  exact And.intro Ev.solutionExistsClosed (And.intro Ev.solutionUniqueClosed Ev.closednessClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse