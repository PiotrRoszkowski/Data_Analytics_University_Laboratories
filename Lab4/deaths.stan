data{
    real lam;
    real sigma;
}

generated quantities {
    real lamda = normal_rng(lam, sigma);
    int deaths = poisson_rng(lamda);
}