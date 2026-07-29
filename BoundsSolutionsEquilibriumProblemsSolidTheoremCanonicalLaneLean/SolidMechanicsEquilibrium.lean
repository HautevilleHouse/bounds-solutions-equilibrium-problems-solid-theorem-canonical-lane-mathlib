import canonicalLaneMathlib.AdmissibleClass
import BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean.EquilibriumExistence

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolidMechanicsEquilibriumPackage (P : EquilibriumExistencePackage) where
  solidBodyContinuum : Prop
  stressStrainRelation : Prop
  equilibriumEquationsSatisfied : Prop
  boundaryConditionsMet : Prop
  weakFormulationWellposed : Prop

structure SolidMechanicsEquilibriumEvidence {P : EquilibriumExistencePackage}
    (S : SolidMechanicsEquilibriumPackage P) where
  solidBodyContinuumClosed : S.solidBodyContinuum
  stressStrainRelationClosed : S.stressStrainRelation
  equilibriumEquationsSatisfiedClosed : S.equilibriumEquationsSatisfied
  boundaryConditionsMetClosed : S.boundaryConditionsMet
  weakFormulationWellposedClosed : S.weakFormulationWellposed

def SolidMechanicsEquilibriumClosed {P : EquilibriumExistencePackage}
    (S : SolidMechanicsEquilibriumPackage P) : Prop :=
  S.solidBodyContinuum ∧ S.stressStrainRelation ∧
  S.equilibriumEquationsSatisfied ∧ S.boundaryConditionsMet ∧
  S.weakFormulationWellposed

theorem solid_mechanics_equilibrium_closed_from_evidence
    {P : EquilibriumExistencePackage} (S : SolidMechanicsEquilibriumPackage P)
    (E : SolidMechanicsEquilibriumEvidence S) : SolidMechanicsEquilibriumClosed S := by
  exact And.intro E.solidBodyContinuumClosed
    (And.intro E.stressStrainRelationClosed
      (And.intro E.equilibriumEquationsSatisfiedClosed
        (And.intro E.boundaryConditionsMetClosed E.weakFormulationWellposedClosed)))

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse