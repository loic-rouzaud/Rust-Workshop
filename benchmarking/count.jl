nb_iterations = 1_000_000

function pi_calc(nb_iterations::Int)
    pi = 0.0
    sign = 1.0

    for n in 0:(nb_iterations-1)
        pi += sign / (2.0 * n + 1.0)
        sign = -sign
    end
    return pi * 4.0
end


execution_time = @elapsed pi_approx = pi_calc(nb_iterations)
formated_output = round(execution_time * 1000, digits=2)

println("Temps d'exécution en Julia : $formated_output ms")
