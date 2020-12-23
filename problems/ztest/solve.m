function solve(in, out)
    pkg load statistics;

    data = transpose(fscanf(in, '%f'));

    mu0 = data(1);
    sigma = data(2);
    alpha = data(3);
    type = data(4);
    sample = data(5:end);

    if (type == -1.0)
        H=ztest(sample, mu0, sigma, 'Tail', 'left', 'Alpha', alpha);
    elseif (type == 0.0)
        H=ztest(sample, mu0, sigma, 'Tail', 'both', 'Alpha', alpha);
    else
        H=ztest(sample, mu0, sigma, 'Tail', 'right', 'Alpha', alpha);
    endif
    
    fprintf(out,"%d\n", H);
end