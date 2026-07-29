import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure BoundsLatticePackage where
  lowerBound : ℝ
  upperBound : ℝ
  infimumAttained : Prop
  supremumAttained : Prop
  latticeComplete : Prop

structure BoundsLatticeEvidence (B : BoundsLatticePackage) where
  lowerBoundClosed : B.infimumAttained
  upperBoundClosed : B.supremumAttained
  latticeCompleteClosed : B.latticeComplete

def BoundsLatticeClosed (B : BoundsLatticePackage) : Prop :=
  B.infimumAttained ∧ B.supremumAttained ∧ B.latticeComplete

theorem bounds_lattice_closed_from_evidence (B : BoundsLatticePackage) (E : BoundsLatticeEvidence B) : BoundsLatticeClosed B := by
  exact And.intro E.lowerBoundClosed (And.intro E.upperBoundClosed E.latticeCompleteClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse