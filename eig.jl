using LinearAlgebra
alpha = 10
n=1
c_n1=2.702

J = [-1 (-alpha*n*(c_n1^(n-1)))/((1+(c_n1^(n)))^2)
(-alpha*n*(c_n1^(n-1)))/((1+(c_n1^(n)))^2) -1]

n1_eigs=eigvals(J)
display("when n=1,")
display(n1_eigs)

n=2
c_n2=2

J = [-1 (-alpha*n*(c_n2^(n-1)))/((1+(c_n2^(n)))^2)
(-alpha*n*(c_n2^(n-1)))/((1+(c_n2^(n)))^2) -1]

n2_eigs=eigvals(J)
display("when n=2,")
display(n2_eigs)
