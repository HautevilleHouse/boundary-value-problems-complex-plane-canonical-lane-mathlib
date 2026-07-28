import BoundaryValueProblemsComplexPlaneCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse