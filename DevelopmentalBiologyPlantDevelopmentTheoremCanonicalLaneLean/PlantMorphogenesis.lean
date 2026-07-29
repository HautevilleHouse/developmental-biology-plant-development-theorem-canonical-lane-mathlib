import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure PlantMorphogenesisPackage where
  meristemActivation : Prop
  primordiumInitiation : Prop
  phyllotaxisPattern : Prop
  auxinTransport : Prop
  geneRegulatoryNetwork : Prop

structure PlantMorphogenesisEvidence (P : PlantMorphogenesisPackage) where
  meristemActivationClosed : P.meristemActivation
  primordiumInitiationClosed : P.primordiumInitiation
  phyllotaxisPatternClosed : P.phyllotaxisPattern
  auxinTransportClosed : P.auxinTransport
  geneRegulatoryNetworkClosed : P.geneRegulatoryNetwork

def PlantMorphogenesisClosed (P : PlantMorphogenesisPackage) : Prop :=
  P.meristemActivation ∧ P.primordiumInitiation ∧ P.phyllotaxisPattern ∧ P.auxinTransport ∧ P.geneRegulatoryNetwork

theorem plant_morphogenesis_closed_from_evidence (P : PlantMorphogenesisPackage) (E : PlantMorphogenesisEvidence P) : PlantMorphogenesisClosed P := by
  exact And.intro E.meristemActivationClosed
    (And.intro E.primordiumInitiationClosed
      (And.intro E.phyllotaxisPatternClosed
        (And.intro E.auxinTransportClosed E.geneRegulatoryNetworkClosed)))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse