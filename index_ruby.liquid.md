# R-99: Ninety-Nine Ruby Problems

## Working with lists

__[P01]({{ "01" | ruby }}) (*) Find the last box of a list.__
> Example:
    > last([1, 1, 2, 3, 5, 8])
    => 8

{{ "01" | ruby_solution }}

__[P02]({{ "02" | ruby }}) (*) Find the last but one box of a list.__
> Example:
    > penultimate([1, 1, 2, 3, 5, 8])
    => 5

{{ "02" | ruby_solution }}

__[P03]({{ "03" | ruby }}) (*) Find the Kth element of a list.__
> By convention, the first element in the list is element 0.

> Example:
    > nth(2, [1, 1, 2, 3, 5, 8])
    => 2

{{ "03" | ruby_solution }}

__[P04]({{ "04" | ruby }}) (*) Find the number of elements of a list.__
> Example:
    > length([1, 1, 2, 3, 5, 8])
    => 6

{{ "04" | ruby_solution }}

__[P05]({{ "05" | ruby }}) (*) Reverse a list.__
> Example:
    > reverse([1, 1, 2, 3, 5, 8])
    => [8, 5, 3, 2, 1, 1]

{{ "05" | ruby_solution }}

__[P06]({{ "06" | ruby }}) (*) Find out whether a list is a palindrome.__
> Example:
    > palindrome?([1, 2, 3, 2, 1])
    => true

{{ "06" | ruby_solution }}

__[P07]({{ "07" | ruby }}) (**) Flatten a nested list structure.__
> Example:
    > flatten([[1, 1], 2, [3, [5, 8]]])
    => [1, 1, 2, 3, 5, 8]

{{ "07" | ruby_solution }}

__[P08]({{ "08" | ruby }}) (**) Eliminate consecutive duplicates of list elements.__
> If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

> Example:
    > compress([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
    => [:a, :b, :c, :a, :d, :e]

{{ "08" | ruby_solution }}

__[P09]({{ "09" | ruby }}) (**) Pack consecutive duplicates of list elements into sublists.__
> If a list contains repeated elements they should be placed in separate sublists.

> Example:
    > pack([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
    => [[:a, :a, :a, :a], [:b], [:c, :c], [:a, :a], [:d], [:e, :e, :e, :e]]

{{ "09" | ruby_solution }}

__[P10]({{ "10" | ruby }}) (*) Run-length encoding of a list.__
> Use the result of problem [P09]() to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as tuples _(N, E)_ where _N_ is the number of duplicates of the element _E_.

> Example:
    > encode([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
    => [[4, :a], [1, :b], [2, :c], [2, :a], [1, :d], [4, :e]]

{{ "10" | ruby_solution }}

__[P11]({{ "11" | ruby }}) (*) Modified run-length encoding.__
> Modify the result of problem [P10]() in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as _(N, E)_ terms.

> Example:
    > encode_modified([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
    => [[4, :a], :b, [2, :c], [2, :a], :d, [4, :e]]

{{ "11" | ruby_solution }}

__[P12]({{ "12" | ruby }}) (**) Decode a run-length encoded list.__
> Given a run-length code list generated as specified in problem [P10](), construct its uncompressed version.

> Example:
    > decode([[4, :a], :b, [2, :c], [2, :a], :d, [4, :e]])
    => [:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e]

{{ "12" | ruby_solution }}

__[P13]({{ "13" | ruby }}) (**) Run-length encoding of a list (direct solution).__
> Implement the modified run-length encoding data compression method directly. I.e. don't use other methods you've written (like [P09]()'s pack); do all the work directly.

> Example:
    > encode_direct([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
    => [[4, :a], :b, [2, :c], [2, :a], :d, [4, :e]]

{{ "13" | ruby_solution }}

__[P14]({{ "14" | ruby }}) (*) Duplicate the elements of a list.__
> Example:
    > duplicate([:a, :b, :c, :c, :d])
    => [:a, :a, :b, :b, :c, :c, :c, :c, :d, :d]

{{ "14" | ruby_solution }}

__[P15]({{ "15" | ruby }}) (**) Duplicate the elements of a list a given number of times.__
> Example:
    > duplicate_n(3, [:a, :b, :c, :c, :d])
    => [:a, :a, :a, :b, :b, :b, :c, :c, :c, :c, :c, :c, :d, :d, :d]

{{ "15" | ruby_solution }}

__[P16]({{ "16" | ruby }}) (**) Drop every Nth element from a list.__
> Example:
    > drop(3, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k])
    => [:a, :b, :d, :e, :g, :h, :j, :k]

{{ "16" | ruby_solution }}

__[P17]({{ "17" | ruby }}) (*) Split a list into two parts.__
> The length of the first part is given. Use a list of two parts for your result.

{{ "17" | ruby_solution }}

> Example:
    > split(3, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k])
    => [[:a, :b, :c], [:d, :e, :f, :g, :h, :i, :j, :k]]

__[P18]({{ "18" | ruby }}) (**) Extract a slice from a list.__
> Given two indices, _I_ and _K_, the slice is the list containing the elements from and including the _I_ th element up to but not including the _K_ th element of the original list. Start counting the elements with 0.

> Example:
    > slice(3, 7, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k])
    => [:d, :e, :f, :g]

{{ "18" | ruby_solution }}

__[P19]({{ "19" | ruby }}) (**) Rotate a list N places to the left.__
> Examples:
    > rotate(3, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k])
    => [:d, :e, :f, :g, :h, :i, :j, :k, :a, :b, :c]
    > rotate(-2, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k])
    => [:j, :k, :a, :b, :c, :d, :e, :f, :g, :h, :i]

{{ "19" | ruby_solution }}

__[P20]({{ "20" | ruby }}) (*) Remove the Kth element from a list.__
> Return the list and the removed element in a list. Elements are numbered from 0.

> Example:
    > remove_at(1, [:a, :b, :c, :d])
    => [[:a, :c, :d], [:b]]

{{ "20" | ruby_solution }}

__[P21]({{ "21" | ruby }}) (*) Insert an element at a given position into a list.__
> Example:
    > insert_at(:new, 1, [:a, :b, :c, :d])
    => [:a, :new, :b, :c, :d]

{{ "21" | ruby_solution }}

__[P22]({{ "22" | ruby }}) (*) Create a list containing all integers within a given range.__
> Example:
    > range(4, 9)
    => [4, 5, 6, 7, 8, 9]

{{ "22" | ruby_solution }}

__[P23]({{ "23" | ruby }}) (**) Extract a given number of randomly selected elements from a list.__
> Example:
    > random_select(3, [:a, :b, :c, :d, :e, :f, :g, :h])
    => [:e, :d, :a]

{{ "23" | ruby_solution }}

__[P24]({{ "24" | ruby }}) (*) Lotto: Draw N different random numbers from the set 1..M.__
> Example:
    > lotto(6, 49)
    => [23, 1, 17, 33, 21, 37]

{{ "24" | ruby_solution }}

__[P25]({{ "25" | ruby }}) (*) Generate a random permutation of the elements of a list.__
> Hint: Use the solution of problem [P23]().

> Example:
    > random_permute([:a, :b, :c, :d, :e, :f])
    => [:b, :a, :d, :c, :e, :f]

{{ "25" | ruby_solution }}

__[P26]({{ "26" | ruby }}) (**) Generate the combinations of K distinct objects chosen from the N elements of a list.__
> In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are `C(12,3) = 220` possibilities (`C(N,K)` denotes the well-known binomial coefficient). For pure mathematicians, this result may be great. But we want to really generate all the possibilities.

> Example:
    > combinations(3, [:a, :b, :c, :d, :e, :f])
    => [[:a, :b, :c], [:a, :b, :d], [:a, :b, :e], [:a, :b, :f], [:a, :c, :d],
    [:a, :c, :e], [:a, :c, :f], [:a, :d, :e], [:a, :d, :f], [:a, :e, :f],
    [:b, :c, :d], [:b, :c, :e], [:b, :c, :f], [:b, :d, :e], [:b, :d, :f],
    [:b, :e, :f], [:c, :d, :e], [:c, :d, :f], [:c, :e, :f], [:d, :e, :f]]

{{ "26" | ruby_solution }}

__[P27]({{ "27" | ruby }}) (**) Group the elements of a set into disjoint subsets.__
> __a)__ In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities.

> Example:
    > group3(["Aldo", "Beat", "Carla", "David", "Evi", "Flip", "Gary", "Hugo", "Ida"])
    => [[["Aldo", "Beat"], ["Carla", "David", "Evi"], ["Flip", "Gary", "Hugo", "Ida"]], ...]

> __b)__ Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

> Example:
    > group([2, 2, 5], ["Aldo", "Beat", "Carla", "David", "Evi", "Flip", "Gary", "Hugo", "Ida"])
    => [[["Aldo", "Beat"], ["Carla", "David"], ["Evi", "Flip", "Gary", "Hugo", "Ida"]], ...]

> Note that we do not want permutations of the group members; i.e. ((Aldo, Beat), ...) is the same solution as ((Beat, Aldo), ...). However, we make a difference between ((Aldo, Beat), (Carla, David), ...) and ((Carla, David), (Aldo, Beat), ...).

> You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

{{ "27" | ruby_solution }}

__[P28]({{ "28" | ruby }}) (**) Sorting a list of lists according to length of sublists.__
> __a)__ We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of the list according to their length. E.g. short lists first, longer lists later, or vice versa.

> Example:
    > lsort([[:a, :b, :c], [:d, :e], [:f, :g, :h], [:d, :e], [:i, :j, :k, :l], [:m, :n], [:o]])
    => [[:o], [:d, :e], [:d, :e], [:m, :n], [:a, :b, :c], [:f, :g, :h], [:i, :j, :k, :l]]

> __b)__ Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements according to their length frequency; i.e. in the default, sorting is done ascendingly, lists with rare lengths are placed, others with a more frequent length come later.

> Example:
    > lfsort([[:a, :b, :c], [:d, :e], [:f, :g, :h], [:d, :e], [:i, :j, :k, :l], [:m, :n], [:o]])
    => [[:i, :j, :k, :l], [:o], [:a, :b, :c], [:f, :g, :h], [:d, :e], [:d, :e], [:m, :n]]

> Note that in the above example, the first two lists in the result have length 4 and 1 and both lengths appear just once. The third and fourth lists have length 3 and there are two list of this length. Finally, the last three lists have length 2. This is the most frequent length.

{{ "28" | ruby_solution }}

## Arithmetic

__[P31]({{ "31" | ruby }}) (**) Determine whether a given integer number is prime.__
> Example:
    > prime?(7)
    => true

{{ "31" | ruby_solution }}

__[P32]({{ "32" | ruby }}) (**) Determine the greatest common divisor of two positive integer numbers.__
> Use Euclid's algorithm.

> Example:
    > gcd(36, 63)
    => 9

{{ "32" | ruby_solution }}

__[P33]({{ "33" | ruby }}) (*) Determine whether two positive integer numbers are coprime.__
> Two numbers are coprime if their greatest common divisor equals 1.

> Example:
    > coprime(35, 64)
    => true

{{ "33" | ruby_solution }}

__[P34]({{ "34" | ruby }}) (**) Calculate Euler's totient function phi(m).__
> Euler's so-called totient function `phi(m)` is defined as the number of positive integers _r_ (1 <= _r_ <= _m_) that are coprime to _m_.

> Example:
    > totient(10)
    => 4

{{ "34" | ruby_solution }}

__[P35]({{ "35" | ruby }}) (**) Determine the prime factors of a given positive integer.__
> Construct a flat list containing the prime factors in ascending order.

> Example:
    > prime_factors(315)
    => [3, 3, 5, 7]

{{ "35" | ruby_solution }}

__[P36]({{ "36" | ruby }}) (**) Determine the prime factors of a given positive integer (2).__
> Construct a list containing the prime factors and their multiplicity.

> Example:
    > prime_factors_multiplicity(315)
    => [[3, 2], [5, 1], [7, 1]]

{{ "36" | ruby_solution }}

__[P37]({{ "37" | ruby }}) (**) Calculate Euler's totient function phi(m) (improved).__
> See problem [P34]() for the definition of Euler's totient function. If the list of the prime factors of a number _m_ is known in the form of problem [P36]() then the function `phi(m)` can be efficiently calculated as follows: Let [[_p1_, _m1_], [_p2_, _m2_], [_p3_, _m3_], ...] be the list of prime factors (and their multiplicities) of a given number _m_. Then `phi(m)` can be calculated with the following formula:

> _phi_(_m_) = (_p1_- 1) * _p1_^(_m1_-1) * (_p2_-1) * _p2_^(_m2_-1) * (_p3_-1) * _p3_^(_m3_-1) * ...

> Note that _a_^_b_ stands for the bth power of _a_.

{{ "37" | ruby_solution }}

__[P38]({{ "38" | ruby }}) (*) Compare the two methods of calculating Euler's totient function.__
> Use the solutions of problems [P34]() and [P37]() to compare the algorithms. Try to calculate `phi(10090)` as an example.

{{ "38" | ruby_solution }}

__[P39]({{ "39" | ruby}}) (*) A list of prime numbers.__
> Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.

> Example:
    > list_primes_in_range(7, 31)
    => [7, 11, 13, 17, 19, 23, 29, 31]

{{ "39" | ruby_solution }}

__[P40]({{ "40" | ruby}}) (**) Goldbach's conjecture.__
> Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers. E.g. 28 = 5 + 23. It is one of the most famous facts in number theory that has not been proved to be correct in the general case. It has been _numerically_ confirmed up to very large numbers. Write a function to find the two prime numbers that sum up to a given even integer.

> Example:
    > goldbach(28)
    => [5, 23]

{{ "40" | ruby_solution }}

__[P41]({{ "41" | ruby}}) (**) A list of Goldbach compositions.__
> Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

> Example:
    > print_goldbach_list(9, 20)
    10 = 3 + 7
    12 = 5 + 7
    14 = 3 + 11
    16 = 3 + 13
    18 = 5 + 13
    20 = 3 + 17

> In most cases, if an even number is written as the sum of two prime numbers, one of them is very small. Very rarely, the primes are both bigger than, say, 50. Try to find out how many such cases there are in the range 2..3000.

> Example (minimum value of 50 for the primes):
    > print_goldbach_list_limited(1, 2000, 50)
    992 = 73 + 919
    1382 = 61 + 1321
    1856 = 67 + 1789
    1928 = 61 + 1867

{{ "41" | ruby_solution }}

## Logic and Codes

__[P46]({{ "46" | ruby}}) (**) Truth tables for logical expressions.__
> Define functions `and2`, `or2`, `nand`, `nor`, `xor`, `impl`, and `equ` (for logical equivalence) which return true or false according to the result of their respective operations; e.g. `and2(A, B)` is true if and only if both _A_ and _B_ are true.

> Example:
    > and2(true, true)
    => true
    > xor(true, true)
    => false

> A logical expression in two variables can then be written as an function of two variables, e.g: `and(or(a, b), nand(a, b))`

> Now, write a function called `table2` which prints the truth table of a given logical expression in two variables.

> Example:
    > table2(lambda{ |a, b| and2.call(a, or2.call(a, b)) })
    A     B     result
    true  true  true
    true  false true
    false true  false
    false false false

{{ "46" | ruby_solution }}

__[P47]({{ "47" | ruby}}) (*) Truth tables for logical expressions (2).__

> Omitted for now.

__[P48]({{ "48" | ruby}}) (**) Truth tables for logical expressions (3).__
> Generalize problem [P46]() in such a way that the logical expression may contain any number of logical variables.

> Example:
    > table(3, lambda{ |par| (par[0] && (par[1] || par[2])) == (par[0] && par[1] || par[0] && par[2]) })
    true	true	true	true
    true	true	false	true
    true	false	true	true
    true	false	false	true
    false	true	true	true
    false	true	false	true
    false	false	true	true
    false	false	false	true

{{ "48" | ruby_solution }}

__[P49]({{ "49" | ruby}}) (**) Gray code.__
> An _n_-bit Gray code is a sequence of _n_-bit strings constructed according to certain rules. For example,

> n = 1: C(1) = ("0", "1").

> n = 2: C(2) = ("00", "01", "11", "10").

> n = 3: C(3) = ("000", "001", "011", "010", "110", "111", "101", "100").

> Find out the construction rules and write a function to generate Gray codes.

> Example:
    > gray(3)
    => ["000", "001", "011", "010", "110", "111", "101", "100"]

{{ "49" | ruby_solution }}

__[P50]({{ "50" | ruby}}) (***) Huffman code.__
> First of all, consult a good book on discrete mathematics or algorithms for a detailed description of Huffman codes!

> We suppose a set of symbols with their frequencies, given as a list of `[S, F]` tuples. E.g. `[["a", 45], ["b", 13], ["c", 12], ["d", 16], ["e", 9], ["f", 5]]`. Our objective is to construct a list of `[S, C]` tuples, where _C_ is the Huffman code word for the symbol _S_.

> Example:
    > huffman([["a", 45], ["b", 13], ["c", 12], ["d", 16], ["e", 9], ["f", 5]])
    => [["a", "0"], ["c", "100"], ["b", "101"], ["f", "1100"], ["e", "1101"], ["d", "111"]]

{{ "50" | ruby_solution }}

