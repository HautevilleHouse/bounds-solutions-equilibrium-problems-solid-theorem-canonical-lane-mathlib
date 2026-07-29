import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SaddlePointTheoremPackage where
  X : Type u
  Y : Type v
  f : X → Y → ℝ
  saddle : X × Y
  minMaxCondition : ∀ x y, f x (saddle.2) ≤ f (saddle.1) y
  valueMatch : f (saddle.1) (saddle.2) = sup (λ x => inf (λ y => f x y)) (Set.univ : Set Y)
  valueMatch' : f (saddle.1) (saddle.2) = inf (λ y => sup (λ x => f x y)) (Set.univ : Set X)

structure SaddlePointEvidence (P : SaddlePointTheoremPackage) where
  saddleInSet : P.saddle.1 ∈ Set.univ ∧ P.saddle.2 ∈ Set.univ
  condition : P.minMaxCondition
  valueMatch : P.valueMatch
  valueMatch' : P.valueMatch'

def SaddlePointClosed (P : SaddlePointTheoremPackage) : Prop :=
  P.minMaxCondition ∧ P.valueMatch ∧ P.valueMatch'

theorem saddle_point_closed_from_evidence
    (P : SaddlePointTheoremPackage) (E : SaddlePointEvidence P) :
    SaddlePointClosed P := by
  exact And.intro E.condition (And.intro E.valueMatch E.valueMatch')

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
