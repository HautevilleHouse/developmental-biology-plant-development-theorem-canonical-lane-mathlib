import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.GeneRegulation

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure MorphogenesisPackage (P : PatternFormationPDEPackage)
    (S : SignalingNetworkPackage P) (G : GeneRegulationPackage P S) where
  cellDivision : Prop
  cellExpansion : Prop
  tissueMechanics : Prop
  organPrimordiumFormation : Prop
  shapeGeneration : Prop

structure MorphogenesisEvidence (P : PatternFormationPDEPackage)
    (S : SignalingNetworkPackage P) (G : GeneRegulationPackage P S)
    (M : MorphogenesisPackage P S G) where
  cellDivisionClosed : M.cellDivision
  cellExpansionClosed : M.cellExpansion
  tissueMechanicsClosed : M.tissueMechanics
  organPrimordiumFormationClosed : M.organPrimordiumFormation
  shapeGenerationClosed : M.shapeGeneration

def MorphogenesisClosed (P : PatternFormationPDEPackage)
    (S : SignalingNetworkPackage P) (G : GeneRegulationPackage P S)
    (M : MorphogenesisPackage P S G) : Prop :=
  M.cellDivision ∧ M.cellExpansion ∧ M.tissueMechanics ∧
  M.organPrimordiumFormation ∧ M.shapeGeneration

theorem morphogenesis_closed_from_evidence
    (P : PatternFormationPDEPackage) (S : SignalingNetworkPackage P)
    (G : GeneRegulationPackage P S) (M : MorphogenesisPackage P S G)
    (E : MorphogenesisEvidence P S G M) : MorphogenesisClosed P S G M := by
  exact And.intro E.cellDivisionClosed
    (And.intro E.cellExpansionClosed
      (And.intro E.tissueMechanicsClosed
        (And.intro E.organPrimordiumFormationClosed E.shapeGenerationClosed)))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse