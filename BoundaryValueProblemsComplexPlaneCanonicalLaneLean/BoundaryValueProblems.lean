import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure DirichletProblem where
  domain : ComplexDomain
  boundaryFunction : domain.boundary → ℝ
  harmonicFunctionExists : Prop
  boundaryContinuity : Prop
  conclusion : harmonicFunctionExists ∧ boundaryContinuity

structure PoissonIntegralFormula where
  domain : ComplexDomain
  harmonicFunction : domain.carrier → ℝ
  boundaryValues : domain.boundary → ℝ
  formulaValid : Prop
  conclusion : formulaValid

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
