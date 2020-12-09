
function Q = RRF(A,L)
sz = size(A);
n = sz(2);
sigma = normrnd(0,1,n,L);
Y = A*sigma;
[Q, ~] = qr(Y);
Q = Q(:,1:L);
end