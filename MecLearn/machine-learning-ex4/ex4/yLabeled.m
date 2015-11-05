function[yl] = yLabeled(v, nl)
        res = zeros(size(v, 1), nl);
        for i = 1:size(v, 1)
            a = zeros(1, nl);
            a(v(i)) = 1;
            res(i,:) = a;
        end
        yl = res;
    end