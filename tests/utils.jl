load("src/utils.jl")

@assert seq(0.0, 1.0, 0.1) == [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]

@assert keys({'a' => 1, 'b' => 2}) == ['a', 'b']

@assert range([1:10]) == [1, 10]

@assert head([1:10]'') == [1 2 3 4 5 6]'

@assert head([1:10]'', 3) == [1 2 3]'

@assert tail([1:10]'') == [5 6 7 8 9 10]'

@assert tail([1:10]'', 3) == [8 9 10]'

@assert is_nan(NaN)
@assert !is_nan(0)

@assert all(cummax([1:10]) == [1:10])

@assert all(cummin([1:5]) == [1, 1, 1, 1, 1])

@assert nrow(zeros(10, 2)) == 10

@assert ncol(zeros(10, 2)) == 2

@assert seq_len(5) == [1, 2, 3, 4, 5]

@assert length(find(map(x -> x == "README.md", dir(".")))) > 0

@assert all_equal([1, 2], [1, 2])
@assert ! all_equal([1, 2], [1, 3])
