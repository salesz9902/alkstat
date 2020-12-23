function solve(in, out)

    data = fscanf(in,"%d %f");
    
    N = data(1);
    P = data(2);
    K = 1;

    while true
        x = 1.0 - (N-K)*(N-K-1) / (N*(N-1));
        if x >= P 
            break;
        end
        K = K +1;
    end
    
    
    fprintf(out,"%d\n",K);
end