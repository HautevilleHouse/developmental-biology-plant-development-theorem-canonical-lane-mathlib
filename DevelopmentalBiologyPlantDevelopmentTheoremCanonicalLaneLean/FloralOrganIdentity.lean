import DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.PhyllotaxisPattern

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure FloralOrganIdentityPackage {G : GrowthPatternDynamicsPackage}
    {R : GeneRegulatoryNetworkPackage G} {P : PhyllotaxisPatternPackage G R} where
  sepalSpecification : Prop
  petalSpecification : Prop
  stamenSpecification : Prop
  carpelSpecification : Prop

structure FloralOrganIdentityEvidence {G : GrowthPatternDynamicsPackage}
    {R : GeneRegulatoryNetworkPackage G} {P : PhyllotaxisPatternPackage G R}
    (F : FloralOrganIdentityPackage G R P) where
  sepalSpecificationClosed : F.sepalSpecification
  petalSpecificationClosed : F.petalSpecification
  stamenSpecificationClosed : F.stamenSpecification
  carpelSpecificationClosed : F.carpelSpecification

def FloralOrganIdentityClosed {G : GrowthPatternDynamicsPackage}
    {R : GeneRegulatoryNetworkPackage G} {P : PhyllotaxisPatternPackage G R}
    (F : FloralOrganIdentityPackage G R P) : Prop :=
  F.sepalSpecification ∧ F.petalSpecification ∧ F.stamenSpecification ∧ F.carpelSpecification

theorem floral_organ_identity_closed_from_evidence
    {G : GrowthPatternDynamicsPackage} {R : GeneRegulatoryNetworkPackage G}
    {P : PhyllotaxisPatternPackage G R} (F : FloralOrganIdentityPackage G R P)
    (E : FloralOrganIdentityEvidence F) : FloralOrganIdentityClosed F := by
  exact And.intro E.sepalSpecificationClosed
    (And.intro E.petalSpecificationClosed
      (And.intro E.stamenSpecificationClosed E.carpelSpecificationClosed))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
