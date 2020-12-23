function solve(in, out)

    pkg load statistics;

    data = transpose(fscanf(in, '%f'));

    mu0 = data(1);
    alpha = data(2);
    type = data(3);
    sample = data(4:end);

    if(type == 1.0)
        H = ttest(sample, mu0, 'Tail', 'right', 'Alpha', alpha);
    elseif (type == 0.0)
        H = ttest(sample, mu0, 'Tail', 'both', 'Alpha', alpha);
    else
        H = ttest(sample, mu0, 'Tail', 'left', 'Alpha', alpha);
    endif

    fprintf(out, "%d\n", H);
end