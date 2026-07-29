import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.EquilibriumProblem

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure FixedPointSolidPackage {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} where
  mapping : ℝ → ℝ
  fixedPointExists : Prop
  uniqueness : Prop
  continuous : Prop
  contractionProperty : Prop

def FixedPointSolidClosed {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} (F : FixedPointSolidPackage B E) : Prop :=
  F.fixedPointExists ∧ F.uniqueness ∧ F.continuous ∧ F.contractionProperty

structure FixedPointSolidEvidence {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} (F : FixedPointSolidPackage B E) where
  fixedPointExistsClosed : F.fixedPointExists
  uniquenessClosed : F.uniqueness
  continuousClosed : F.continuous
  contractionPropertyClosed : F.contractionProperty

theorem fixed_point_solid_closed_from_evidence {B : BoundsLatticePackage} {E : EquilibriumProblemPackage B} (F : FixedPointSolidPackage B E) (Ev : FixedPointSolidEvidence F) : FixedPointSolidClosed F := by
  exact And.intro Ev.fixedPointExistsClosed (And.intro Ev.uniquenessClosed (And.intro Ev.continuousClosed Ev.contractionPropertyClosed))

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse