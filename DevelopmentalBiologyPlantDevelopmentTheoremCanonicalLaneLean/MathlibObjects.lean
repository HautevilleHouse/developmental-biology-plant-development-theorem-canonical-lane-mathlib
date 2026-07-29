import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PlantDevelopmentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PlantDevelopmentAdmittedObject where
  space : PlantDevelopmentSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure PlantDevelopmentEndgameState where
  object : PlantDevelopmentAdmittedObject

def PlantDevelopmentWitnessClosed (O : PlantDevelopmentAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse