import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean

structure SolidSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SolidAdmittedObject where
  space : SolidSpace
  boundedDomain : Prop
  equilibriumExists : Prop
  solutionStability : Prop
  conclusion : equilibriumExists

def SolidWitnessClosed (O : SolidAdmittedObject) : Prop :=
  O.equilibriumExists

end BoundsSolutionsEquilibriumProblemsSolidTheoremCanonicalLaneLean
end HautevilleHouse