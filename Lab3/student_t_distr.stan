data {
  int n;
  real m;
  real sigma;
}

generated quantities {
    real T = student_t_rng(n, m, sigma);
    real C = cauchy_rng(m, sigma);
}
