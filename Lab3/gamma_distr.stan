data {
  int a;
  int b;
}

generated quantities {
real X1 = gamma_rng(a,b);
real X2 = inv_gamma_rng(a,b);
}