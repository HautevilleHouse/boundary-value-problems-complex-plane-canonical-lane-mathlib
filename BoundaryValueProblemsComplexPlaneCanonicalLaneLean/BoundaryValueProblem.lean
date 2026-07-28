import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure BoundaryValueProblemPackage (A : AdmissibleClass) where
  differentialOperator : (A.object.domain → ℂ) → (A.object.domain → ℂ)
  boundaryCondition : (A.object.boundary → ℂ) → Prop
  solutionExistence : Prop
  solutionUniqueness : Prop
  continuousDependence : Prop

structure BoundaryValueProblemEvidence {A : AdmissibleClass} (B : BoundaryValueProblemPackage A) where
  solutionExistenceClosed : B.solutionExistence
  solutionUniquenessClosed : B.solutionUniqueness
  continuousDependenceClosed : B.continuousDependence

def BoundaryValueProblemClosed {A : AdmissibleClass} (B : BoundaryValueProblemPackage A) : Prop :=
  B.solutionExistence ∧ B.solutionUniqueness ∧ B.continuousDependence

theorem boundary_value_problem_closed_from_evidence {A : AdmissibleClass} (B : BoundaryValueProblemPackage A) (E : BoundaryValueProblemEvidence B) :
    BoundaryValueProblemClosed B := by
  exact And.intro E.solutionExistenceClosed (And.intro E.solutionUniquenessClosed E.continuousDependenceClosed)

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse