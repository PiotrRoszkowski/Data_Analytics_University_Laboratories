data {
  real a;
  real m;
  real phi;
}

generated quantities {
  real neg_bin_con = neg_binomial_rng(a, a/m);
  real neg_bin_dis = neg_binomial_2_rng(m, phi);
  
  real poisson_con = poisson_rng(neg_bin_con);
  real poisson_dis = poisson_rng(neg_bin_dis);  
}
