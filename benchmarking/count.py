import time

def calculer_pi(nb_iterations):
    pi = 0.0
    for n in range(nb_iterations):
        pi += (-1) ** n / (2 * n + 1)
    return pi * 4

start = time.time()
pi_approx = calculer_pi(1_000_000)
end = time.time()

print(f"Temps d'exécution en Python : {(end - start) * 1000:.2f} ms")
