function out = F_local_model(x,y,s,p)


tau = y(1);
S = y(2);

% wave speed
spd = p.spd;

% values at - infinity
v_neg = p.v_neg;
tau_neg = p.tau_neg;
S_neg = p.S_neg;

% parameters
m1 = p.m1;
none = p.none;
mu = p.mu;
kappa = p.kappa;

v = v_neg - spd * (tau - tau_neg);

% profile equations
out = [-tau / spd / mu * (-spd * (v - v_neg) + exp(S) / tau ^ 2 - tau - exp(S_neg) / tau_neg ^ 2 + tau_neg); tau * ((-0.1e1 / tau / spd / mu - 0.1e1 / exp(S) * tau * v / kappa) * (-spd * (v - v_neg) + exp(S) / tau ^ 2 - tau - exp(S_neg) / tau_neg ^ 2 + tau_neg) + 0.1e1 / exp(S) * tau / kappa * (-spd * (exp(S) / tau + S + tau ^ 2 / 0.2e1 + v ^ 2 / 0.2e1 - exp(S_neg) / tau_neg - S_neg - tau_neg ^ 2 / 0.2e1 - v_neg ^ 2 / 0.2e1) + v * (exp(S) / tau ^ 2 - tau) - v_neg * (exp(S_neg) / tau_neg ^ 2 - tau_neg)));];
