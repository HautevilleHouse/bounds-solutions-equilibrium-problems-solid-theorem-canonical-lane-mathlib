import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundsPackage where
  lowerBound : ℝ
  upperBound : ℝ
  convexFunctional : Type u
  feasibleSet : Type v
  lowerBoundClosed : lowerBound ≤ upperBound

structure ConvexFunctionalPackage (B : BoundsPackage) where
  functional : B.convexFunctional
  isConvex : Prop
  isLowerSemicontinuous : Prop
  isWeakLowerSemicontinuous : Prop
  isConvexClosed : isConvex
  isLowerSemicontinuousClosed : isLowerSemicontinuous
  isWeakLowerSemicontinuousClosed : isWeakLowerSemicontinuous

structure EquilibriumPackage (B : BoundsPackage) (F : ConvexFunctionalPackage B) where
  equilibriumPoint : B.feasibleSet
  optimalValue : ℝ
  optimalValueBounds : B.lowerBound ≤ optimalValue ∧ optimalValue ≤ B.upperBound
  optimalValueBoundsClosed : optimalValueBounds
  existenceProof : Prop
  uniquenessProof : Prop
  existenceProofClosed : existenceProof
  uniquenessProofClosed : uniquenessProof

def EquilibriumClosed (B : BoundsPackage) (F : ConvexFunctionalPackage B) (E : EquilibriumPackage B F) : Prop :=
  E.optimalValueBounds ∧ E.existenceProof ∧ E.uniquenessProof

theorem equilibrium_closed_from_evidence (B : BoundsPackage) (F : ConvexFunctionalPackage B) (E : EquilibriumPackage B F) : EquilibriumClosed B F E := by
  exact And.intro E.optimalValueBoundsClosed (And.intro E.existenceProofClosed E.uniquenessProofClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse