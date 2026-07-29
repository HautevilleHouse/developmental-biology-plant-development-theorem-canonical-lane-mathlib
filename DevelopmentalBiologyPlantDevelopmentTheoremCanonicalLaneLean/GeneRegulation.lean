import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.SignalingNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure GeneRegulationPackage (P : PatternFormationPDEPackage) (S : SignalingNetworkPackage P) where
  transcriptionFactorNetwork : Type u
  chromatinRemodeling : Type v
  geneExpressionPattern : Prop
  epigeneticModifications : Prop
  temporalDynamics : Prop

structure GeneRegulationEvidence (P : PatternFormationPDEPackage)
    (S : SignalingNetworkPackage P) (G : GeneRegulationPackage P S) where
  geneExpressionPatternClosed : G.geneExpressionPattern
  epigeneticModificationsClosed : G.epigeneticModifications
  temporalDynamicsClosed : G.temporalDynamics

def GeneRegulationClosed (P : PatternFormationPDEPackage)
    (S : SignalingNetworkPackage P) (G : GeneRegulationPackage P S) : Prop :=
  G.geneExpressionPattern ∧ G.epigeneticModifications ∧ G.temporalDynamics

theorem gene_regulation_closed_from_evidence
    (P : PatternFormationPDEPackage) (S : SignalingNetworkPackage P)
    (G : GeneRegulationPackage P S) (E : GeneRegulationEvidence P S G) :
    GeneRegulationClosed P S G := by
  exact And.intro E.geneExpressionPatternClosed
    (And.intro E.epigeneticModificationsClosed E.temporalDynamicsClosed)

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse