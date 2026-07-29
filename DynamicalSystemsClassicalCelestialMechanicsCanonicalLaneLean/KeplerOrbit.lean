import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure KeplerOrbit where
  semimajorAxis : ℝ
  eccentricity : ℝ
  inclination : ℝ
  longitudeAscendingNode : ℝ
  argumentOfPeriapsis : ℝ
  meanAnomaly : ℝ

definition orbitalPeriod : KeplerOrbit → ℝ := λ orbit =>
  let a := orbit.semimajorAxis
  let μ := 1
  2 * π * Real.sqrt (a ^ 3 / μ)

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
