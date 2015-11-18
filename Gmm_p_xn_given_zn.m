% SUMMARY:  p(xn|zn) of GMM, size: N*p
% AUTHOR:   QIUQIANG KONG
% Created:  17-11-2015
% Modified: - 
% -----------------------------------------------------------
% input:
%   X       data, size: N*p
%   phi:    para struct
%      B      size: Q*M
%      mu     size: p*Q*M
%      Sigma  size: p*p*Q*M
% output:
%   p(xn|zn)
% ===========================================================
function p_xn_given_zn = Gmm_p_xn_given_zn(X, phi)
[N,p] = size(X);
[M,Q] = size(phi.B);
p_xn_given_zn = zeros(N,Q);
for i1 = 1:Q
    p_xn_given_zn(:,i1) = Gmmpdf(X, phi.B(:,i1)', phi.mu(:,:,i1), phi.Sigma(:,:,:,i1));
end
end 