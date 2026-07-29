import DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.GeneRegulatoryNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure PhyllotaxisPatternPackage {G : GrowthPatternDynamicsPackage}
    {R : GeneRegulatoryNetworkPackage G} where
  spiralOrdering : Prop
  fibonacciAngle : Prop
  primordiumSpacing : Prop
  patternRobustness : Prop

structure PhyllotaxisPatternEvidence {G : GrowthPatternDynamicsPackage}
    {R : GeneRegulatoryNetworkPackage G} (P : PhyllotaxisPatternPackage G R) where
  spiralOrderingClosed : P.spiralOrdering
  fibonacciAngleClosed : P.fibonacciAngle
  primordiumSpacingClosed : P.primordiumSpacing
  patternRobustnessClosed : P.patternRobustness

def PhyllotaxisPatternClosed {G : GrowthPatternDynamicsPackage}
    {R : GeneRegulatoryNetworkPackage G} (P : PhyllotaxisPatternPackage G R) : Prop :=
  P.spiralOrdering ∧ P.fibonacciAngle ∧ P.primordiumSpacing ∧ P.patternRobustness

theorem phyllotaxis_pattern_closed_from_evidence
    {G : GrowthPatternDynamicsPackage} {R : GeneRegulatoryNetworkPackage G}
    (P : PhyllotaxisPatternPackage G R) (E : PhyllotaxisPatternEvidence P) :
    PhyllotaxisPatternClosed P := by
  exact And.intro E.spiralOrderingClosed
    (And.intro E.fibonacciAngleClosed
      (And.intro E.primordiumSpacingClosed E.patternRobustnessClosed))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
