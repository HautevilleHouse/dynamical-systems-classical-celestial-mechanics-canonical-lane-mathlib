import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure NBodyConfiguration where
  n : Nat
  masses : Vector ℝ n
  positions : Vector (Vector ℝ 3) n
  velocities : Vector (Vector ℝ 3) n

definition gravitationalPotential : NBodyConfiguration → ℝ := λ conf =>
  let G := 1
  ∑ i in Finset.range conf.n, ∑ j in Finset.range conf.n, if i ≠ j then -G * conf.masses.get i * conf.masses.get j / (‖conf.positions.get i - conf.positions.get j‖) else 0

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
