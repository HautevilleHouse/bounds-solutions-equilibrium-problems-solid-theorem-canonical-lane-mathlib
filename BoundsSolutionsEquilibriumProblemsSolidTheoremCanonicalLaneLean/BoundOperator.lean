import canonicalLaneMathlib.AdmissibleClass

/-!
# Bound Operator Package
-/

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundOperatorPackage (A : AdmissibleClass) where
  operatorDomain : Type u
  operatorCodomain : Type v
  linearBound : Prop
  monotonicity : Prop
  compactness : Prop

structure BoundOperatorEvidence {A : AdmissibleClass} (B : BoundOperatorPackage A) where
  linearBoundClosed : B.linearBound
  monotonicityClosed : B.monotonicity
  compactnessClosed : B.compactness

def BoundOperatorClosed {A : AdmissibleClass} (B : BoundOperatorPackage A) : Prop :=
  B.linearBound ∧ B.monotonicity ∧ B.compactness

theorem bound_operator_closed_from_evidence
    {A : AdmissibleClass} (B : BoundOperatorPackage A) (E : BoundOperatorEvidence B) :
    BoundOperatorClosed B := by
  exact And.intro E.linearBoundClosed (And.intro E.monotonicityClosed E.compactnessClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse