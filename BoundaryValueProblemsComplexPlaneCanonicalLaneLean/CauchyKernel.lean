import BoundaryValueProblemsComplexPlaneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure CauchyKernelPackage where
  kernelFunction : ℂ → ℂ → ℂ
  holomorphicInFirst : ∀ w, AnalyticOn ℂ (λ z => kernelFunction z w) (Set.univ)
  residueProperty : ∀ (f : ℂ → ℂ) (γ : Set ℂ), analyticOn f γ → (∮_γ f(z) / (z - w) dz = 2πi * f(w))
  kernelClosed : Prop

structure CauchyKernelEvidence (C : CauchyKernelPackage) where
  kernelFunctionClosed : C.kernelFunction = (λ z w => 1 / (z - w))
  holomorphicInFirstClosed : C.holomorphicInFirst
  residuePropertyClosed : C.residueProperty
  kernelClosedClosed : C.kernelClosed

def CauchyKernelClosed (C : CauchyKernelPackage) : Prop :=
  C.kernelFunction = (λ z w => 1 / (z - w)) ∧
  C.holomorphicInFirst ∧
  C.residueProperty ∧
  C.kernelClosed

theorem cauchy_kernel_closed_from_evidence (C : CauchyKernelPackage) (E : CauchyKernelEvidence C) : CauchyKernelClosed C :=
  by
    exact And.intro E.kernelFunctionClosed
      (And.intro E.holomorphicInFirstClosed
        (And.intro E.residuePropertyClosed E.kernelClosedClosed))

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse