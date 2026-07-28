import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Type u
  conformalMap : Type v
  existenceToUnitDisk : Prop
  boundaryCorrespondence : Prop
  uniqueness : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  existenceToUnitDiskClosed : R.existenceToUnitDisk
  boundaryCorrespondenceClosed : R.boundaryCorrespondence
  uniquenessClosed : R.uniqueness

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.existenceToUnitDisk ∧ R.boundaryCorrespondence ∧ R.uniqueness

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.existenceToUnitDiskClosed
    (And.intro E.boundaryCorrespondenceClosed E.uniquenessClosed)

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
