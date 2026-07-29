import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean.DevelopmentalBiologyObjects

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure PatternFormationPDEPackage where
  timeParameter : Type u
  concentrationField : Type v
  reactionDiffusionEquation : Prop
  turingInstabilityCondition : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure PatternFormationPDEEvidence (P : PatternFormationPDEPackage) where
  reactionDiffusionEquationClosed : P.reactionDiffusionEquation
  turingInstabilityConditionClosed : P.turingInstabilityCondition
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition

def PatternFormationPDEClosed (P : PatternFormationPDEPackage) : Prop :=
  P.reactionDiffusionEquation ∧ P.turingInstabilityCondition ∧
  P.initialCondition ∧ P.boundaryCondition

theorem pattern_formation_pde_closed_from_evidence
    (P : PatternFormationPDEPackage) (E : PatternFormationPDEEvidence P) :
    PatternFormationPDEClosed P := by
  exact And.intro E.reactionDiffusionEquationClosed
    (And.intro E.turingInstabilityConditionClosed
      (And.intro E.initialConditionClosed E.boundaryConditionClosed))

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse