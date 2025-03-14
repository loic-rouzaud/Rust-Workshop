console.time("Temps d'exécution en JS ");
let pi = 0.0;
let sign = 1;

for (let n = 0; n < 1000000; n++) {
  pi += sign / (2 * n + 1);
  sign = -sign;
}
pi *= 4;

console.log("\n");
console.timeEnd("Temps d'exécution en JS ");
