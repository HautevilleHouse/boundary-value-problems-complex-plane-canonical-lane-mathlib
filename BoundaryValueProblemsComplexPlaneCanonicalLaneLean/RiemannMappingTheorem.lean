import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure RiemannMappingTheorem where
  domain : ComplexDomain
  simplyConnected : Prop
  unitDisk : ComplexDomain
  conformalMapExists : Prop
  conclusion : simplyConnected → conformalMapExists

structure ConformalMap where
  source : ComplexDomain
  target : ComplexDomain
  map : source.carrier → target.carrier
  biholomorphic : Prop
  derivativeNonzero : Prop
  conclusion : biholomorphic ∧ derivativeNonzero

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
