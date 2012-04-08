function seq(a, b, by)
  [a:by:b]
end

function keys(h)
  h_keys = []
  
  for e = h
    h_keys = [h_keys, e[1]]
  end
  
  h_keys
end

function range(x)
  [min(x), max(x)]
end

function head(x)
  x[1:5, :]
end

function tail(x)
  m = size(x, 1)
  x[(m - 4):m, :]
end

function is_nan(x)
  isequal(x, NaN)
end

function cummax(x)
  m = x[1]
  o = [m]
  for i = 2:length(x)
    if x[i] > m
    m = x[i]
  end
  o = append(o, m)
  end
  o
end

function cummin(x)
  m = x[1]
  o = [m]
  for i = 2:length(x)
    if x[i] < m
    m = x[i]
  end
  o = append(o, m)
  end
  o
end

function nrow(x)
  size(x, 1)
end

function ncol(x)
  size(x, 2)
end

function seq_len(x)
  [1:x]
end

function dir(x)
  map(chomp, readlines(`ls $x`))
end

function all_equal(a, b)
  all(a == b)
end
