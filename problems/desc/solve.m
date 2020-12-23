function solve(in, out)

    sample = fscanf(in, '%f');
    fprintf(out,"%.12f %.12f %.12f\n", mean(sample), std(sample), median(sample));

end