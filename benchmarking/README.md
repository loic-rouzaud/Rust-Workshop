# Benchmarking

```bash
./exec.sh
```


## La série de Leibniz

Calcul de pi, la série de Leibniz : https://fr.wikipedia.org/wiki/Formule_de_Leibniz#S%C3%A9rie_altern%C3%A9e

La série de Leibniz pour l'approximation de $\\pi\$ est donnée par :

$\[
\pi = 4 \sum_{k=0}^{\infty} \frac{(-1)^k}{2k+1}
\]$

Ou de manière développée :

$\[
\pi = 4 \left( 1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \frac{1}{9} - \frac{1}{11} + \dots \right)
\]$

Cette série converge très lentement vers $\\pi\$, ce qui la rend peu efficace pour les calculs numériques précis.

## Temps écoulés :

| **Opération** | **Temps écoulé** |
|    ---        |      ---         |
| rust          | 0.042 µs         | // microsecondes parce que plus précis
| c             | 0.001 ms         |
| js            | 5.93 ms          |
| python        | 244.59 ms        |
| Haskell       | 0.122 ms         |
| Julia         | 0.99 ms          |


Les résultats du benchmarking montrent clairement les différences de performance entre plusieurs langages de programmation pour une tâche donnée.

- Rust et C se démarquent avec des temps d'exécution extrêmement faibles, ce qui est dû à leurs compilateurs très optimisés et à leur nature de bas niveau.

- Haskell et Julia offrent également de très bonnes performances, surtout pour les calculs intensifs. JavaScript et Python, bien que lents, permettent une rapidité de développement acceptable pour de nombreux cas d'utilisation.
