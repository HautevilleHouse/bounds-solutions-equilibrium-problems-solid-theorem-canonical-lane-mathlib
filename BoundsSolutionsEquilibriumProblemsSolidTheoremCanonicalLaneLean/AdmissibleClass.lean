import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure EquilibriumAdmittedObjectData where
  existenceProof : Prop
  uniquenessProof : Prop
  existenceProofClosed : existenceProof
  uniquenessProofClosed : uniquenessProof

inductive AdmittedObject : Type where
  | EquilibriumAdmittedObject : EquilibriumAdmittedObjectData → AdmittedObject

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (match A.object with
    | EquilibriumAdmittedObject o => o.existenceProof ∧ o.uniquenessProof
    | _ => True) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse