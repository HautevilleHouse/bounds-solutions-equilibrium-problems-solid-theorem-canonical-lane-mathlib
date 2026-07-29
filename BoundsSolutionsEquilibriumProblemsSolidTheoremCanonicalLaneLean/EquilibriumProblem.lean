import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure EquilibriumProblemPackage where
  problemSpace : Type u
  solutionSet : Type v
  existenceCondition : Prop
  uniquenessCondition : Prop
  stabilityCondition : Prop

def EquilibriumProblemClosed (E : EquilibriumProblemPackage) : Prop :=
  E.existenceCondition ∧ E.uniquenessCondition ∧ E.stabilityCondition

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
