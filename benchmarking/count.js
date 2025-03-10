console.time("Temps d'exécution en JS");
let pi = 0.0;

for (let n = 0; n < 1000000; n++) {
  pi += Math.pow(-1, n) / (2 * n + 1);
}
pi *= 4;

console.log("\n");
console.timeEnd("Temps d'exécution en JS");
