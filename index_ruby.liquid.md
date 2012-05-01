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



