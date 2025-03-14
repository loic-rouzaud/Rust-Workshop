use std::time::Instant;

fn pi_calc() -> f64 {
    let start = Instant::now();
    let mut pi = 0.0;
    let mut sign = 1.0;

    for n in 0..1000000 {
        pi += sign / (2.0 * n as f64 + 1.0);
        sign = -sign;
    }
    pi *= 4.0;

    let duration = start.elapsed();
    println!(
        "Temps d'exécution en Rust : {:.3} µs\n",
        duration.as_nanos() as f64 / 1_000.0
    );
    pi
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let _pi: f64 = pi_calc();
    Ok(())
}
