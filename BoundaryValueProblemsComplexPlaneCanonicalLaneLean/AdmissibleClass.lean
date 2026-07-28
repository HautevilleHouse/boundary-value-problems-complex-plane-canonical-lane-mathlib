import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure ComplexAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  boundary : Set domain
  boundarySmooth : Prop
  interior : Set domain
  interiorNonempty : Prop

def ComplexWitnessClosed (O : ComplexAdmittedObject) : Prop :=
  O.boundarySmooth ∧ O.interiorNonempty

structure AdmissibleClass where
  object : ComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse