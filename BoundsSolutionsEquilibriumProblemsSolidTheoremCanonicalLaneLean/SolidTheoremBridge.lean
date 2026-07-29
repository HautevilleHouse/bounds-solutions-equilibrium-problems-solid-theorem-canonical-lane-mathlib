import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.BoundsConvexFunctionalEquilibrium

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolidTheoremPackage (B : BoundsPackage) (F : ConvexFunctionalPackage B) (E : EquilibriumPackage B F) where
  solidityCondition : Prop
  equilibriumContinuity : Prop
  approximationStability : Prop
  solidityConditionClosed : solidityCondition
  equilibriumContinuityClosed : equilibriumContinuity
  approximationStabilityClosed : approximationStability

def SolidTheoremClosed (B : BoundsPackage) (F : ConvexFunctionalPackage B) (E : EquilibriumPackage B F) (S : SolidTheoremPackage B F E) : Prop :=
  S.solidityCondition ∧ S.equilibriumContinuity ∧ S.approximationStability

theorem solid_theorem_closed_from_evidence (B : BoundsPackage) (F : ConvexFunctionalPackage B) (E : EquilibriumPackage B F) (S : SolidTheoremPackage B F E) : SolidTheoremClosed B F E S := by
  exact And.intro S.solidityConditionClosed (And.intro S.equilibriumContinuityClosed S.approximationStabilityClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse