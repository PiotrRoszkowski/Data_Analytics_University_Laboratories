data {
  real beta1;
  real alpha;
  int M;   //number of years analyzed
  vector[M] miles;    //number of miles flown each year
}

generated quantities {
  real beta = fabs(beta_rng(alpha, beta1));
  int deaths[M];
  for (k in 1:M) {
    deaths[k] = poisson_rng(beta*miles[k]);
  }
}