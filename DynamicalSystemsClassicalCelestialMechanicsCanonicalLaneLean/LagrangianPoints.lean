import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean

structure LagrangianPoint where
  label : String
  position : Vector ℝ 3

definition circularLagrangianPoints (M₁ M₂ : ℝ) : List LagrangianPoint :=
  let r := 1
  let μ := M₂ / (M₁ + M₂)
  [
    { label := "L1", position := ⟨r * (1 - (μ / 3)^(1/3)), 0, 0⟩ },
    { label := "L2", position := ⟨r * (1 + (μ / 3)^(1/3)), 0, 0⟩ },
    { label := "L3", position := ⟨r * (-1 - (5*μ / 12)), 0, 0⟩ },
    { label := "L4", position := ⟨r * (1/2 - μ, √3/2, 0)⟩ },
    { label := "L5", position := ⟨r * (1/2 - μ, -√3/2, 0)⟩ }
  ]

end DynamicalSystemsClassicalCelestialMechanicsCanonicalLaneLean
end HautevilleHouse
