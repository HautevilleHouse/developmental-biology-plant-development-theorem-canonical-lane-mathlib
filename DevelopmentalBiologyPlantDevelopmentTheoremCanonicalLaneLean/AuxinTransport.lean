import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure AuxinTransportPackage where
  auxinBiosynthesis : Prop
  polarTransport : Prop
  cellularInfluxEfflux : Prop
  auxinResponseGenes : Prop
  feedbackLoops : Prop

structure AuxinTransportEvidence (A : AuxinTransportPackage) where
  auxinBiosynthesisClosed : A.auxinBiosynthesis
  polarTransportClosed : A.polarTransport
  cellularInfluxEffluxClosed : A.cellularInfluxEfflux
  auxinResponseGenesClosed : A.auxinResponseGenes
  feedbackLoopsClosed : A.feedbackLoops

def AuxinTransportClosed (A : AuxinTransportPackage) : Prop :=
  A.auxinBiosynthesis ∧ A.polarTransport ∧ A.cellularInfluxEfflux ∧ A.auxinResponseGenes ∧ A.feedbackLoops

theorem auxin_transport_closed_from_evidence (A : AuxinTransportPackage) (E : AuxinTransportEvidence A) : AuxinTransportClosed A := by
  exact And.intro E.auxinBiosynthesisClosed
    (And.intro E.polarTransportClosed
      (And.intro E.cellularInfluxEffluxClosed
        (And.intro E.auxinResponseGenesClosed E.feedbackLoopsClosed)))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse