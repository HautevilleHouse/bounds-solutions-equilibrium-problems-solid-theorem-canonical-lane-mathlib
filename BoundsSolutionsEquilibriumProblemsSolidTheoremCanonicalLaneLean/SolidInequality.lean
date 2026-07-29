import canonicalLaneMathlib.AdmissibleClass

/-!
# Solid Variational Inequality Package
-/

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolidInequalityPackage {A : AdmissibleClass} {B : BoundOperatorPackage A} {E : EquilibriumSolverPackage B} where
  inequalityFormulation : Prop
  regularization : Prop
  solutionRegularity : Prop

structure SolidInequalityEvidence {A : AdmissibleClass} {B : BoundOperatorPackage A} {E : EquilibriumSolverPackage B} (S : SolidInequalityPackage E) where
  inequalityFormulationClosed : S.inequalityFormulation
  regularizationClosed : S.regularization
  solutionRegularityClosed : S.solutionRegularity

def SolidInequalityClosed {A : AdmissibleClass} {B : BoundOperatorPackage A} {E : EquilibriumSolverPackage B} (S : SolidInequalityPackage E) : Prop :=
  S.inequalityFormulation ∧ S.regularization ∧ S.solutionRegularity

theorem solid_inequality_closed_from_evidence
    {A : AdmissibleClass} {B : BoundOperatorPackage A} {E : EquilibriumSolverPackage B}
    (S : SolidInequalityPackage E) (Ev : SolidInequalityEvidence S) :
    SolidInequalityClosed S := by
  exact And.intro Ev.inequalityFormulationClosed (And.intro Ev.regularizationClosed Ev.solutionRegularityClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse