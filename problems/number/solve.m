function solve(in, out)

    data = fscanf(in, '%d');
    
    a = data(1);
    b = data(2);

    A = data(3:(2+a));
    B = data((3+a):end);

    K = 1;
    bufferY=0;

    for i= 1:a
        for j=1:b
            x = A(i)*B(j);
            
            if x >0
                bufferY=bufferY + 1;
            
            endif

        endfor
    endfor

    K=(bufferY/(a*b));    
    
    fprintf(out,"%.12f\n",K);
end