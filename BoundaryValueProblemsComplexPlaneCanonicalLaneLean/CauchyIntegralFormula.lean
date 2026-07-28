import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure CauchyIntegralPackage where
  holomorphicOn : Prop
  contourIntegral : Prop
  cauchyFormula : Prop
  analyticity : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  holomorphicOnClosed : C.holomorphicOn
  contourIntegralClosed : C.contourIntegral
  cauchyFormulaClosed : C.cauchyFormula
  analyticityClosed : C.analyticity

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.holomorphicOn ∧ C.contourIntegral ∧ C.cauchyFormula ∧ C.analyticity

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.holomorphicOnClosed (And.intro E.contourIntegralClosed (And.intro E.cauchyFormulaClosed E.analyticityClosed))

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse