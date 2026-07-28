import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure IdentityTheorem where
  domain : ComplexDomain
  analyticFunctions : domain.carrier → ℂ
  agreementSet : Set domain.carrier
  limitPointInDomain : Prop
  functionsAgreeEverywhere : Prop
  conclusion : limitPointInDomain → functionsAgreeEverywhere

structure MonodromyTheorem where
  domain : ComplexDomain
  analyticContinuationAlongPath : Prop
  homotopyInvariance : Prop
  globalAnalyticFunction : Prop
  conclusion : analyticContinuationAlongPath → homotopyInvariance → globalAnalyticFunction

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
