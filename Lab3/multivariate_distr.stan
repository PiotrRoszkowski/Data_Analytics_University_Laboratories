data {
  int n;
  vector[n] mu;
  matrix[n,n] sigma;
}

generated quantities {
    vector[n] multi = multi_normal_rng(mu, sigma);
}
