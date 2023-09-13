using DelimitedFiles
idx = parse(Int64, ARGS[1])

N_sample = 100000
distances = Array{Float64}(undef, N_sample)
pi_estimate = Array{Float64}(undef, N_sample)
sample = rand(2, N_sample)
distances = sqrt.(sample[1,:].^2 + sample[2,:].^2)
for i in 1:N_sample
    pi_estimate[i] = 4*count(dist -> dist <= 1, distances[1:i])/i
end
writedlm("results/array_$(idx).csv", pi_estimate)