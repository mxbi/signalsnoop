### A Pluto.jl notebook ###
# v0.19.14

using Markdown
using InteractiveUtils

# ╔═╡ 1153c62e-7bc8-11ed-3434-6f8ce7e6d8ea
function linterp(data, indices)
	i1 = trunc.(Int, indices)
	i2_w = indices .- i1
	i1_w = 1 .- i2_w

	return data[i1] .* i1_w .+ data[i1.+1] .* i2_w
end

# ╔═╡ b29580f1-3e1e-4463-8727-971bb8766cbb
data=[10,20,30,40,50]

# ╔═╡ cd730a3e-fcb3-4d8b-8458-ae39c531f634
linterp(data, [1.8, 2.5, 4.9])

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.2"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╠═1153c62e-7bc8-11ed-3434-6f8ce7e6d8ea
# ╠═b29580f1-3e1e-4463-8727-971bb8766cbb
# ╠═cd730a3e-fcb3-4d8b-8458-ae39c531f634
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
