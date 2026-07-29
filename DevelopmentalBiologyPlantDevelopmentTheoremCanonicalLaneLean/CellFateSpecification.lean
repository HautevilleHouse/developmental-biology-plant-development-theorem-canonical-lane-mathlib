import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.OrganPatterning

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure CellFateSpecificationPackage {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} where
  fateMarkers : Type u
  markerExpressionProfile : fateMarkers -> Prop
  fateStable : Prop
  cellFateDetermined : Prop

structure CellFateSpecificationEvidence {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} (F : CellFateSpecificationPackage P) where
  fateStableClosed : F.fateStable
  cellFateDeterminedClosed : F.cellFateDetermined

def CellFateSpecificationClosed {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} (F : CellFateSpecificationPackage P) : Prop :=
  F.fateStable ∧ F.cellFateDetermined

theorem cell_fate_specification_closed_from_evidence {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} (F : CellFateSpecificationPackage P)
    (E : CellFateSpecificationEvidence F) : CellFateSpecificationClosed F := by
  exact And.intro E.fateStableClosed E.cellFateDeterminedClosed

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse