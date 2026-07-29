import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  signalMolecule : Type u
  concentration : signalMolecule -> ℝ
  gradientSharpness : ℕ
  gradientSharpnessPositive : gradientSharpness > 0
  gradientEstablished : Prop
  gradientSharpnessStable : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  gradientEstablishedClosed : M.gradientEstablished
  gradientSharpnessStableClosed : M.gradientSharpnessStable

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.gradientEstablished ∧ M.gradientSharpnessStable

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.gradientEstablishedClosed E.gradientSharpnessStableClosed

end DevelopmentalBiologyPlantDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse