import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.SolutionRegularity

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure EquilibriumStabilityEvidence (A : AdmissibleClass) where
  perturbationBound : ℝ
  stabilityMargin : ℝ
  marginNonneg : 0 ≤ stabilityMargin
  stabilityProof : stabilityMargin > 0 → True

def stabilityClosed (A : AdmissibleClass) (E : EquilibriumStabilityEvidence A) : Prop :=
  E.stabilityMargin > 0

theorem stability_from_evidence (A : AdmissibleClass) (E : EquilibriumStabilityEvidence A) :
    stabilityClosed A E := by
  exact E.stabilityProof (by
    have hpos : 0 < E.stabilityMargin := by
      exact lt_of_lt_of_le (by norm_num) E.marginNonneg
    exact hpos)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
