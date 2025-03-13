nb_iterations = 1_000_000

function pi_calc(nb_iterations::Int)
    pi = 0.0
    for n in 0:(nb_iterations-1)
        pi += (-1.0)^n / (2.0 * n + 1.0)
    end
    return pi * 4.0
end

temps_execution = @elapsed pi_approx = pi_calc(nb_iterations)

println("Temps d'exécution Julia : ", temps_execution * 1000, " ms")
