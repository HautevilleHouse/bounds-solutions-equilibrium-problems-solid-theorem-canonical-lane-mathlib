import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure VariationalInequalityPackage where
  convexSet : Type u
  operator : Type v
  inequalityFormulation : Prop
  existenceSolution : Prop
  uniquenessCondition : Prop

structure VariationalInequalityEvidence (V : VariationalInequalityPackage) where
  inequalityFormulationClosed : V.inequalityFormulation
  existenceSolutionClosed : V.existenceSolution
  uniquenessConditionClosed : V.uniquenessCondition

def VariationalInequalityClosed (V : VariationalInequalityPackage) : Prop :=
  V.inequalityFormulation ∧ V.existenceSolution ∧ V.uniquenessCondition

theorem variational_inequality_closed_from_evidence (V : VariationalInequalityPackage) (E : VariationalInequalityEvidence V) : VariationalInequalityClosed V := by
  exact And.intro E.inequalityFormulationClosed (And.intro E.existenceSolutionClosed E.uniquenessConditionClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse