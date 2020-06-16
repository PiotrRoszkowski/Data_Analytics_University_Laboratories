data {
    int N; //Number of samples from data
    int deaths[N]; //deaths per year from data
}

parameters{
    real<lower=0> lambda;
}

model {
    lambda ~ normal(692,239);
    deaths ~ poisson(lambda);
}

generated quantities {
    int death = poisson_rng(lambda);
}