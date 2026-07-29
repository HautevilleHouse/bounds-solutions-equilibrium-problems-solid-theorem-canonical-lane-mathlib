import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure FiniteElementApproximationPackage where
  mesh : Type u
  shapeFunctions : Type v
  stiffnessMatrix : Type w
  loadVector : Type x
  approximationError : Prop
  convergenceRate : Prop

structure FiniteElementApproximationEvidence (F : FiniteElementApproximationPackage) where
  approximationErrorClosed : F.approximationError
  convergenceRateClosed : F.convergenceRate

def FiniteElementApproximationClosed (F : FiniteElementApproximationPackage) : Prop :=
  F.approximationError ∧ F.convergenceRate

theorem finite_element_approximation_closed_from_evidence (F : FiniteElementApproximationPackage) (E : FiniteElementApproximationEvidence F) : FiniteElementApproximationClosed F := by
  exact And.intro E.approximationErrorClosed E.convergenceRateClosed

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse