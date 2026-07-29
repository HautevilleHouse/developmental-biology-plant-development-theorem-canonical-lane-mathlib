import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.PlantDevelopmentTheorem.MeristemPatterning

namespace HautevilleHouse
namespace PlantDevelopmentTheorem

structure FloweringTimeRegulation where
  photoperiodPathway : Prop
  vernalizationPathway : Prop
  floralIntegrators : List String
  floweringTime : Prop

structure FloweringTimeEvidence (F : FloweringTimeRegulation) where
  photoperiodClosed : F.photoperiodPathway
  vernalizationClosed : F.vernalizationPathway
  integratorsNonempty : F.floralIntegrators ≠ []
  floweringTimeClosed : F.floweringTime

def FloweringTimeClosed (F : FloweringTimeRegulation) : Prop :=
  F.photoperiodPathway ∧ F.vernalizationPathway ∧ F.floralIntegrators ≠ [] ∧ F.floweringTime

theorem flowering_time_closed_from_evidence (F : FloweringTimeRegulation) (E : FloweringTimeEvidence F) : FloweringTimeClosed F :=
  And.intro E.photoperiodClosed (And.intro E.vernalizationClosed (And.intro E.integratorsNonempty E.floweringTimeClosed))

end PlantDevelopmentTheorem
end HautevilleHouse