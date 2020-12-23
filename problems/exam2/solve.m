function solve(in, out)

    data = fscanf(in,"%d %d");
    
    N = data(1);
    K = data(2);

    x = 1.0 - (N-K)*(N-K-1) / (N*(N-1));
    y = (1-x) + x*3.5;


    fprintf(out,"%.12f\n",y);

end