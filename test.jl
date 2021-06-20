### A Pluto.jl notebook ###
# v0.14.8

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 934cf656-6af6-4def-8719-2b2ad349d8cd
using PlutoUI

# ╔═╡ 0118f9ce-610e-4edc-801f-ae3ad744ec70
using Plots

# ╔═╡ 7b840337-ca85-4146-8166-aa2d0f5bc4c7
md"""
# Testing Project
"""

# ╔═╡ 54cc2a9f-b6ed-4194-9454-b8f677fcdac2
md"""
### Select Parameter
"""

# ╔═╡ 571da808-d211-11eb-3813-8dc46c912fed
md"""
### ϕ
$(@bind ϕ Slider(1:0.01:2, show_value=true))
"""

# ╔═╡ 86a027db-6797-464d-b369-1f695f9cd8d8
md"""
### Function definitions
"""

# ╔═╡ 36623239-22cf-4f6a-b7fd-7af6fbab509b
y₁(x) = sin(x)

# ╔═╡ bf79a695-c464-4b09-a3af-c64353717352
y₂(x) = sin(x+ϕ)

# ╔═╡ bcfb2e24-14a8-4892-acdc-095ccd1683f7
r = 0:0.01:4π

# ╔═╡ 34d4eff0-c22e-477b-9bfb-67194449a009
md"""
### Plot functions
"""

# ╔═╡ 9e14fb0d-0247-4cdb-88ed-b1b268c66f40
plot(r, [y₁,y₂], labels=["sin(x)" "sin(x+ϕ)"])

# ╔═╡ Cell order:
# ╟─7b840337-ca85-4146-8166-aa2d0f5bc4c7
# ╠═934cf656-6af6-4def-8719-2b2ad349d8cd
# ╠═0118f9ce-610e-4edc-801f-ae3ad744ec70
# ╟─54cc2a9f-b6ed-4194-9454-b8f677fcdac2
# ╟─571da808-d211-11eb-3813-8dc46c912fed
# ╟─86a027db-6797-464d-b369-1f695f9cd8d8
# ╠═36623239-22cf-4f6a-b7fd-7af6fbab509b
# ╠═bf79a695-c464-4b09-a3af-c64353717352
# ╠═bcfb2e24-14a8-4892-acdc-095ccd1683f7
# ╟─34d4eff0-c22e-477b-9bfb-67194449a009
# ╟─9e14fb0d-0247-4cdb-88ed-b1b268c66f40
