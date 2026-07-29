import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PlantDevelopmentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PlantAdmittedObject where
  space : PlantDevelopmentSpace
  meristemPresent : Prop
  signalingPathwayActive : Prop
  modelOrganism : Type
  modelTopology : TopologicalSpace modelOrganism
  patternFormationObserved : Prop
  conclusion : patternFormationObserved

structure PlantDevelopmentEndgameState where
  object : PlantAdmittedObject

def PlantDevelopmentWitnessClosed (O : PlantAdmittedObject) : Prop :=
  O.patternFormationObserved

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse