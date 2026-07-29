import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure EquilibriumExistencePackage where
  problemDomain : Type u
  inequalityConstraints : Type v
  feasibleRegionNonempty : Prop
  solutionSetCompact : Prop
  existenceTheorem : Prop

structure EquilibriumExistenceEvidence (P : EquilibriumExistencePackage) where
  feasibleRegionNonemptyClosed : P.feasibleRegionNonempty
  solutionSetCompactClosed : P.solutionSetCompact
  existenceTheoremClosed : P.existenceTheorem

def EquilibriumExistenceClosed (P : EquilibriumExistencePackage) : Prop :=
  P.feasibleRegionNonempty ∧ P.solutionSetCompact ∧ P.existenceTheorem

theorem equilibrium_existence_closed_from_evidence (P : EquilibriumExistencePackage)
    (E : EquilibriumExistenceEvidence P) : EquilibriumExistenceClosed P := by
  exact And.intro E.feasibleRegionNonemptyClosed
    (And.intro E.solutionSetCompactClosed E.existenceTheoremClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse