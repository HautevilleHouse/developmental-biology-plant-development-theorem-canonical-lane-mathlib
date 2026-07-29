import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.AdmissibleClass
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def plantDevelopmentProjection : Projection PlantDevelopmentEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem plant_development_projection_idempotent (x : PlantDevelopmentEndgameState) :
    plantDevelopmentProjection.toFun (plantDevelopmentProjection.toFun x) = plantDevelopmentProjection.toFun x := by
  exact plantDevelopmentProjection.idempotent x

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse