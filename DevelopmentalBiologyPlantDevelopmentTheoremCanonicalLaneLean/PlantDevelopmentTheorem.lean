import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace PlantDevelopmentTheorem

structure AdmittedPlantObject where
  species : String
  developmentalProgram : Prop
  environmentalInput : Prop
  geneticRegulation : Prop

structure AdmissiblePlantClass where
  object : AdmittedPlantObject
  developmentClosed : Prop
  remainderRecorded : Prop
  gateWitness : developmentClosed ∨ remainderRecorded

def admittedClosure (A : AdmissiblePlantClass) : Prop :=
  A.developmentClosed ∧ (A.developmentClosed ∨ A.remainderRecorded)

end PlantDevelopmentTheorem
end HautevilleHouse