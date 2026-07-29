import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.CellFateSpecification

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure MeristemMaintenancePackage {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} {F : CellFateSpecificationPackage P} where
  stemCellPool : ℕ
  selfRenewalRate : ℕ
  poolMaintained : Prop
  differentiationBalance : Prop

structure MeristemMaintenanceEvidence {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} {F : CellFateSpecificationPackage P}
    (R : MeristemMaintenancePackage F) where
  poolMaintainedClosed : R.poolMaintained
  differentiationBalanceClosed : R.differentiationBalance

def MeristemMaintenanceClosed {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} {F : CellFateSpecificationPackage P}
    (R : MeristemMaintenancePackage F) : Prop :=
  R.poolMaintained ∧ R.differentiationBalance

theorem meristem_maintenance_closed_from_evidence {M : MorphogenGradientPackage}
    {P : OrganPatterningPackage M} {F : CellFateSpecificationPackage P}
    (R : MeristemMaintenancePackage F) (E : MeristemMaintenanceEvidence R) : MeristemMaintenanceClosed R := by
  exact And.intro E.poolMaintainedClosed E.differentiationBalanceClosed

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse