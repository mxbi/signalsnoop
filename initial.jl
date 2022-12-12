using DSP, WAV, FFTW, Plots, Colors, ImageIO, FileIO, ImageShow

function load_iq(fn)
	len = div(filesize(fn), sizeof(ComplexF32))
	z = Vector{ComplexF32}(undef,len)
	read!(fn, z)
end

data = load_iq("./data/scene3-640x480-60-425M-64M-40M.dat")

data

"""
fs: Sampling frequency (input)    
fr: Resampling frequency (output)
"""
function resample(x, fs, fr; interp=:nearest)
	if interp == :nearest
		step = fs / fr
		indices = collect(1:step:length(x))
		indices = Int.(round.(indices))
		x[indices]
	else
		error("Provided interp does not exist")
	end
end

riq = resample(data, 64_000_000, 25_175_000)

plt = plot(abs.(riq[1:10000]))
display(plt)

function rowify(data, width)
	len = width * (length(data) ÷ width)
	println(len)
	reshape(data[1:len], (width, :))
end

begin
	dat = abs.(rowify(riq[1:500000], 800))'
	dat ./= maximum(dat)
	img = Gray.(dat)
end

ImageShow.play(img)
readline()