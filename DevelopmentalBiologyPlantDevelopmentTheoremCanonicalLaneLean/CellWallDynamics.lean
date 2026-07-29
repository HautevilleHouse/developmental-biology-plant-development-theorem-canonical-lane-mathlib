import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure CellWallDynamicsPackage where
  celluloseSynthesis : Prop
  pectinModification : Prop
  turgorPressure : Prop
  expansinActivity : Prop
  wallRemodeling : Prop

structure CellWallDynamicsEvidence (C : CellWallDynamicsPackage) where
  celluloseSynthesisClosed : C.celluloseSynthesis
  pectinModificationClosed : C.pectinModification
  turgorPressureClosed : C.turgorPressure
  expansinActivityClosed : C.expansinActivity
  wallRemodelingClosed : C.wallRemodeling

def CellWallDynamicsClosed (C : CellWallDynamicsPackage) : Prop :=
  C.celluloseSynthesis ∧ C.pectinModification ∧ C.turgorPressure ∧ C.expansinActivity ∧ C.wallRemodeling

theorem cell_wall_dynamics_closed_from_evidence (C : CellWallDynamicsPackage) (E : CellWallDynamicsEvidence C) : CellWallDynamicsClosed C := by
  exact And.intro E.celluloseSynthesisClosed
    (And.intro E.pectinModificationClosed
      (And.intro E.turgorPressureClosed
        (And.intro E.expansinActivityClosed E.wallRemodelingClosed)))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse