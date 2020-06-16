data {
  real lam;
}

generated quantities {  
  real poisson = poisson_rng(lam);
}
