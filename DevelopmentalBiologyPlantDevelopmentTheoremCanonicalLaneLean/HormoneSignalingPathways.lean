import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.PlantDevelopmentTheorem.GeneRegulatoryNetworks

namespace HautevilleHouse
namespace PlantDevelopmentTheorem

structure HormoneSignalingPathway where
  hormone : String
  receptors : List String
  signalTransduction : Prop
  responseGenes : List String

structure HormoneSignalingEvidence (H : HormoneSignalingPathway) where
  signalTransductionClosed : H.signalTransduction
  responseGenesNonempty : H.responseGenes ≠ []

def HormoneSignalingClosed (H : HormoneSignalingPathway) : Prop :=
  H.signalTransduction ∧ H.responseGenes ≠ []

theorem hormone_signaling_closed_from_evidence (H : HormoneSignalingPathway) (E : HormoneSignalingEvidence H) : HormoneSignalingClosed H :=
  And.intro E.signalTransductionClosed E.responseGenesNonempty

end PlantDevelopmentTheorem
end HautevilleHouse