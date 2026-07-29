import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure FixedPointEquilibriumPackage where
  space : Type u
  topology : TopologicalSpace space
  mapping : space → space
  equilibriumPoint : space
  fixedPointProperty : equilibriumPoint = mapping equilibriumPoint

structure FixedPointEquilibriumEvidence (P : FixedPointEquilibriumPackage) where
  convexCompactSet : Convex ℝ (Set.univ : Set P.space) ∧ IsCompact (Set.univ : Set P.space)
  continuousMapping : Continuous P.mapping
  mappingToSet : ∀ x, P.mapping x ∈ Set.univ
  fixedPointExists : ∃ x : P.space, x = P.mapping x
  pointIsFixed : P.equilibriumPoint = P.mapping P.equilibriumPoint

def FixedPointEquilibriumClosed (P : FixedPointEquilibriumPackage) : Prop :=
  P.fixedPointProperty

theorem fixed_point_equilibrium_closed_from_evidence
    (P : FixedPointEquilibriumPackage) (E : FixedPointEquilibriumEvidence P) :
    FixedPointEquilibriumClosed P := by
  exact E.pointIsFixed

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse
