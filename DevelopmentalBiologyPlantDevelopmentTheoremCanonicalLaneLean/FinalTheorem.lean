import DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.FloralOrganIdentity

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

def ConstrainedDevelopmentalBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_developmental_biology_endgame (A : AdmissibleClass) :
    ConstrainedDevelopmentalBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
