import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  boundary : Type v
  analyticFunction : Type w
  integralRepresentation : Prop
  integralFormula : Prop
  deformationInvariance : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  integralRepresentationClosed : C.integralRepresentation
  integralFormulaClosed : C.integralFormula
  deformationInvarianceClosed : C.deformationInvariance

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.integralRepresentation ∧ C.integralFormula ∧ C.deformationInvariance

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.integralRepresentationClosed
    (And.intro E.integralFormulaClosed E.deformationInvarianceClosed)

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
