import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : PlantDevelopmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PlantDevelopmentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse