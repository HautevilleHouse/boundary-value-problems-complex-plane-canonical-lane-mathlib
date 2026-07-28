import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsComplexPlaneCanonicalLaneLean.CauchyIntegral
import BoundaryValueProblemsComplexPlaneCanonicalLaneLean.RiemannMapping
import BoundaryValueProblemsComplexPlaneCanonicalLaneLean.DirichletProblem

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CauchyIntegralClosed (AdmittedObject.cauchyIntegral A) ∧
  RiemannMappingClosed (AdmittedObject.riemannMapping A) ∧
  DirichletProblemClosed (AdmittedObject.dirichletProblem A)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedBoundaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryClosure A := by
  have hBridge : bridgeClosed A := by
    -- Assume the admitted object provides evidence for each package
    have hCauchy : CauchyIntegralClosed (AdmittedObject.cauchyIntegral A) :=
      cauchy_integral_closed_from_evidence (AdmittedObject.cauchyIntegral A)
        (AdmittedObject.cauchyIntegralEvidence A)
    have hRiemann : RiemannMappingClosed (AdmittedObject.riemannMapping A) :=
      riemann_mapping_closed_from_evidence (AdmittedObject.riemannMapping A)
        (AdmittedObject.riemannMappingEvidence A)
    have hDirichlet : DirichletProblemClosed (AdmittedObject.dirichletProblem A) :=
      dirichlet_problem_closed_from_evidence (AdmittedObject.dirichletProblem A)
        (AdmittedObject.dirichletProblemEvidence A)
    exact And.intro hCauchy (And.intro hRiemann hDirichlet)
  have hGate : gateClosed A := A.gateWitness
  exact And.intro hBridge hGate

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
