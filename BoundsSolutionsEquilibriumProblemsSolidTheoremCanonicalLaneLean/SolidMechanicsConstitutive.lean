import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolidMechanicsConstitutivePackage where
  stressStrainRelation : Type u
  elasticityTensor : Type v
  yieldCriterion : Prop
  plasticFlowRule : Prop
  hardeningLaw : Prop

structure SolidMechanicsConstitutiveEvidence (S : SolidMechanicsConstitutivePackage) where
  yieldCriterionClosed : S.yieldCriterion
  plasticFlowRuleClosed : S.plasticFlowRule
  hardeningLawClosed : S.hardeningLaw

def SolidMechanicsConstitutiveClosed (S : SolidMechanicsConstitutivePackage) : Prop :=
  S.yieldCriterion ∧ S.plasticFlowRule ∧ S.hardeningLaw

theorem solid_mechanics_constitutive_closed_from_evidence (S : SolidMechanicsConstitutivePackage) (E : SolidMechanicsConstitutiveEvidence S) : SolidMechanicsConstitutiveClosed S := by
  exact And.intro E.yieldCriterionClosed (And.intro E.plasticFlowRuleClosed E.hardeningLawClosed)

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse