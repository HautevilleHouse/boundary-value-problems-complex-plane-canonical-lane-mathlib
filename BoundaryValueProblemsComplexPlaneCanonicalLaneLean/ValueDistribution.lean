import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsComplexPlaneCanonicalLaneLean

structure NevanlinnaCharacteristic where
  meromorphicFunction : ℂ → ℂ
  characteristicFunction : ℝ → ℝ
  proximityFunction : ℝ → ℝ
  countingFunction : ℝ → ℝ
  definitionsConsistent : Prop
  conclusion : definitionsConsistent

structure DefectRelation where
  meromorphicFunction : ℂ → ℂ
  defectsSum : Prop
  deficiency : ℂ → ℝ
  conclusion : defectsSum ∧ deficiencyNonnegative

end BoundaryValueProblemsComplexPlaneCanonicalLaneLean
end HautevilleHouse
