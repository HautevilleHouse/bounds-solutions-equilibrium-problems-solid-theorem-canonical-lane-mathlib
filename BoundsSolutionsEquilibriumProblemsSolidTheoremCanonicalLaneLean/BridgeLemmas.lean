import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (match A.object with
    | EquilibriumAdmittedObject o => o.existenceProof ∧ o.uniquenessProof
    | _ => True)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  match A.object with
  | EquilibriumAdmittedObject o =>
    exact And.intro o.existenceProofClosed o.uniquenessProofClosed
  | _ => trivial

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse