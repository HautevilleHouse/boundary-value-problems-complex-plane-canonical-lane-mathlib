import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure ComplexDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  boundary : Set carrier
  openConnected : Prop

structure ComplexAdmittedObject where
  domain : ComplexDomain
  analyticFunction : domain.carrier → ℂ
  boundaryValues : domain.boundary → ℂ
  analyticOnDomain : Prop
  continuousOnClosure : Prop
  conclusion : analyticOnDomain ∧ continuousOnClosure

structure AdmissibleClass where
  object : ComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
