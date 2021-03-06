%% C2. Assume first that no testing is implemented,i.e. phi_t = 0 in all periods (which by B3 would be the optimal
%% choice of the household). No reaction to outbreak

function P = C2_questions(P)

T = 200;
P.phi = 0;
P.k0 = P.kss;
P.i0 = 0.01;
P.sss = 1;

[c,k,i,s,l] = compute_path(P,T);

% (a) plot in (k,c)-plane
figure('Name','No reaction: Trajectory plot');
plot_traj(P,k,c);
% filename: C2a1.png

% (b) plot time paths
figure('Name','No reaction: Economic time paths');
plot_path(P,k,c,l,T);

figure('Name','No reaction: Labor and Epidemic time paths');
subplot(3,1,1);
plot(0:T,i);
title('share infected');
xlabel('time');
subplot(3,1,2);
plot(0:T,s);
title('share susceptible');
xlabel('time');
subplot(3,1,3);
plot(0:T,l);
title('Labor');
xlabel('time');
ylim([0,1]);

% (c)
% short term (<20 periods): Increase of capital, decrease of labor,
%                           decrease in consumption, 
% medium-term effects (20–50 periods): Recession of capital, increase of
%                                      labor, increase in consumption, 
% long-term ef- fects (>50 periods): Correction of capital to steady state,
%                                    correction of labor to steady state, 
%                                    correction of labor to steady state

