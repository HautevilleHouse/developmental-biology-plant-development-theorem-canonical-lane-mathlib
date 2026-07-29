import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.PlantDevelopmentTheorem.HormoneSignalingPathways

namespace HautevilleHouse
namespace PlantDevelopmentTheorem

structure MeristemPatterning where
  stemCellNiche : Prop
  organPrimordia : Prop
  phyllotaxis : Prop
  regulatoryNetwork : GeneRegulatoryNetwork

structure MeristemPatterningEvidence (M : MeristemPatterning) where
  stemCellNicheClosed : M.stemCellNiche
  organPrimordiaClosed : M.organPrimordia
  phyllotaxisClosed : M.phyllotaxis
  networkClosed : GeneRegulatoryNetworkClosed M.regulatoryNetwork

def MeristemPatterningClosed (M : MeristemPatterning) : Prop :=
  M.stemCellNiche ∧ M.organPrimordia ∧ M.phyllotaxis ∧ GeneRegulatoryNetworkClosed M.regulatoryNetwork

theorem meristem_patterning_closed_from_evidence (M : MeristemPatterning) (E : MeristemPatterningEvidence M) : MeristemPatterningClosed M :=
  And.intro E.stemCellNicheClosed (And.intro E.organPrimordiaClosed (And.intro E.phyllotaxisClosed E.networkClosed))

end PlantDevelopmentTheorem
end HautevilleHouse