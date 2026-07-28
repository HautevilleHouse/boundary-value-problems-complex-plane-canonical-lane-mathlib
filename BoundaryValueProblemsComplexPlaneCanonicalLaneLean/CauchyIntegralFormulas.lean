import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure CauchyIntegralTheorem where
  domain : ComplexDomain
  analyticOnDomain : Prop
  contourClosed : Prop
  integralZero : Prop
  conclusion : analyticOnDomain → contourClosed → integralZero

structure CauchyIntegralFormula where
  domain : ComplexDomain
  analyticOnDomain : Prop
  contourSimpleClosed : Prop
  interiorPoint : domain.carrier
  integralFormula : Prop
  conclusion : analyticOnDomain → contourSimpleClosed → integralFormula

structure ResidueTheorem where
  domain : ComplexDomain
  meromorphicOnDomain : Prop
  contourSimpleClosed : Prop
  residuesSummed : Prop
  conclusion : meromorphicOnDomain → contourSimpleClosed → residuesSummed

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
