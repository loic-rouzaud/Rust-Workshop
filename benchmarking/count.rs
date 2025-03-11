use std::time::Instant;

fn pi_calc() -> f64 {
    let start = Instant::now();
    let mut pi = 0.0;

    for n in 0..1000000 {
        pi += (-1_f64).powi(n as i32) / (2.0 * n as f64 + 1.0);
    }
    pi *= 4.0;
    let duration = start.elapsed();

    println!("Temps d'exécution en Rust : {:?}ns\n", duration.as_nanos()); /* nanoseconds parce que as_milliseconds affiche zero lol */
    pi
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let _pi: f64 = pi_calc();
    Ok(())
}
