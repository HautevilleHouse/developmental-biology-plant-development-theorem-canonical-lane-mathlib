import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.PatternFormationPDE

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure SignalingNetworkPackage (P : PatternFormationPDEPackage) where
  hormoneNetwork : Type u
  receptorDynamics : Type v
  signalTransduction : Prop
  feedbackLoops : Prop
  stochasticNoise : Prop

structure SignalingNetworkEvidence (P : PatternFormationPDEPackage) (S : SignalingNetworkPackage P) where
  signalTransductionClosed : S.signalTransduction
  feedbackLoopsClosed : S.feedbackLoops
  stochasticNoiseClosed : S.stochasticNoise

def SignalingNetworkClosed (P : PatternFormationPDEPackage) (S : SignalingNetworkPackage P) : Prop :=
  S.signalTransduction ∧ S.feedbackLoops ∧ S.stochasticNoise

theorem signaling_network_closed_from_evidence
    (P : PatternFormationPDEPackage) (S : SignalingNetworkPackage P)
    (E : SignalingNetworkEvidence P S) : SignalingNetworkClosed P S := by
  exact And.intro E.signalTransductionClosed
    (And.intro E.feedbackLoopsClosed E.stochasticNoiseClosed)

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse