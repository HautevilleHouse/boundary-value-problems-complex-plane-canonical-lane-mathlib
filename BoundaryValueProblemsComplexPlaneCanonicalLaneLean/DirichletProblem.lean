import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure DirichletProblemPackage where
  domain : Type u
  boundaryData : Type v
  harmonicFunction : Type w
  existence : Prop
  uniqueness : Prop
  continuityAtBoundary : Prop

structure DirichletProblemEvidence (D : DirichletProblemPackage) where
  existenceClosed : D.existence
  uniquenessClosed : D.uniqueness
  continuityAtBoundaryClosed : D.continuityAtBoundary

def DirichletProblemClosed (D : DirichletProblemPackage) : Prop :=
  D.existence ∧ D.uniqueness ∧ D.continuityAtBoundary

theorem dirichlet_problem_closed_from_evidence (D : DirichletProblemPackage)
    (E : DirichletProblemEvidence D) : DirichletProblemClosed D := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed E.continuityAtBoundaryClosed)

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
