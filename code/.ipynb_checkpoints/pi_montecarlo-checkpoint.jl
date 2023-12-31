using DelimitedFiles
N_sample = 100000
distances = Array{Float64}(undef, N_sample)
pi_estimate = Array{Float64}(undef, N_sample)
sample = rand(2, N_sample)
distances = sqrt.(sample[1,:].^2 + sample[2,:].^2)
for i in 1:N_sample
    pi_estimate[i] = 4*count(dist -> dist <= 1, distances[1:i])/i
end
println("The final estimate of the value of pi is $(pi_estimate[end])")
writedlm("results/singlerun.csv", pi_estimate)