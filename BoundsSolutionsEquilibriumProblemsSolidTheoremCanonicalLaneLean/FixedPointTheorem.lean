import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.BoundEstimate

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure FixedPointTheoremPackage {E : EquilibriumProblemPackage}
    {S : SolutionExistencePackage E} {B : BoundEstimatePackage E S} where
  mappingContractive : Prop
  fixedPointExistence : Prop
  convergenceRate : Prop

structure FixedPointTheoremEvidence {E : EquilibriumProblemPackage}
    {S : SolutionExistencePackage E} {B : BoundEstimatePackage E S}
    (F : FixedPointTheoremPackage E S B) where
  mappingContractiveClosed : F.mappingContractive
  fixedPointExistenceClosed : F.fixedPointExistence
  convergenceRateClosed : F.convergenceRate

def FixedPointTheoremClosed {E : EquilibriumProblemPackage}
    {S : SolutionExistencePackage E} {B : BoundEstimatePackage E S}
    (F : FixedPointTheoremPackage E S B) : Prop :=
  F.mappingContractive ∧ F.fixedPointExistence ∧ F.convergenceRate

theorem fixed_point_theorem_closed_from_evidence
    {E : EquilibriumProblemPackage} {S : SolutionExistencePackage E}
    {B : BoundEstimatePackage E S} (F : FixedPointTheoremPackage E S B)
    (F' : FixedPointTheoremEvidence F) : FixedPointTheoremClosed F :=
  And.intro F'.mappingContractiveClosed
    (And.intro F'.fixedPointExistenceClosed F'.convergenceRateClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
