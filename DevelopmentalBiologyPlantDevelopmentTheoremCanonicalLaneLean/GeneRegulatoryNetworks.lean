import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.PlantDevelopmentTheorem.PlantDevelopmentTheorem

namespace HautevilleHouse
namespace PlantDevelopmentTheorem

structure GeneRegulatoryNetwork where
  genes : List String
  interactions : List (String × String × String) -- (regulator, target, type)
  dynamics : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetwork) where
  genesClosed : G.genes ≠ []
  dynamicsClosed : G.dynamics

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetwork) : Prop :=
  G.genes ≠ [] ∧ G.dynamics

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetwork) (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G :=
  And.intro E.genesClosed E.dynamicsClosed

end PlantDevelopmentTheorem
end HautevilleHouse