#!/usr/bin/env ruby
require 'test/unit'

Dir[File.join(File.dirname(__FILE__), './ruby', '*.rb')].each do |f|
    require f
end

class Test99 < Test::Unit::TestCase
    def test_all
        {
            :P01 => ["last", {
                [[1, 1, 2, 3, 5, 8]] => 8,
                
            }],
            
            :P02 => ["penultimate", {
                [[1, 1, 2, 3, 5, 8]] => 5,
                
            }],
            
            :P03 => ["nth", {
                [2, [1, 1, 2, 3, 5, 8]] => 2,
                
            }],
            
            :P04 => ["length", {
                [[1, 1, 2, 3, 5, 8]] => 6,
                
            }],
            
            :P05 => ["reverse", {
                [[1, 1, 2, 3, 5, 8]] => [8, 5, 3, 2, 1, 1],
                
            }],
            
            :P06 => ["palindrome?", {
                [[1, 2, 3, 2, 1]] => true,
                [[1, 2, 3, 1, 1]] => false,
                
            }],
            
            :P07 => ["flatten", {
                [[[1, 1], 2, [3, [5, 8]]]] => [1, 1, 2, 3, 5, 8],
                
            }],
            
            :P08 => ["compress", {
                [[:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e]] => [:a, :b, :c, :a, :d, :e],
                
            }],
            
            :P09 => ["pack", {
                [[:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e]] => [[:a, :a, :a, :a], [:b], [:c, :c], [:a, :a], [:d], [:e, :e, :e, :e]],
                
            }],
            
            :P10 => ["encode", {
                [[:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e]] => [[4, :a], [1, :b], [2, :c], [2, :a], [1, :d], [4, :e]],
                
            }],
            
            :P11 => ["encode_modified", {
                [[:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e]] => [[4, :a], :b, [2, :c], [2, :a], :d, [4, :e]],
                
            }],
            
            :P12 => ["decode", {
                [[[4, :a], [1, :b], [2, :c], [2, :a], [1, :d], [4, :e]]] => [:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e],
                
            }],
            
            :P13 => ["encode_direct", {
                [[:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e]] => [[4, :a], :b, [2, :c], [2, :a], :d, [4, :e]],
                
            }],
            
            :P14 => ["duplicate", {
                [[:a, :b, :c, :c, :d]] => [:a, :a, :b, :b, :c, :c, :c, :c, :d, :d],
                [[:a, :b, :c, [:c, :d]]] => [:a, :a, :b, :b, :c, :c, [:c, :d], [:c, :d]],
                
            }],
            
            :P15 => ["duplicate_n", {
                [3, [:a, :b, :c, :c, :d]] => [:a, :a, :a, :b, :b, :b, :c, :c, :c, :c, :c, :c, :d, :d, :d],
                [3, [:a, :b, :c, [:c, :d]]] => [:a, :a, :a, :b, :b, :b, :c, :c, :c, [:c, :d], [:c, :d], [:c, :d]],
                
            }],
            
            :P16 => ["drop", {
                [3, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k]] => [:a, :b, :d, :e, :g, :h, :j, :k],
                
            }],
            
            :P17 => ["split", {
                [3, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k]] => [[:a, :b, :c], [:d, :e, :f, :g, :h, :i, :j, :k]],
                
            }],
            
            :P18 => ["slice", {
                [3, 7, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k]] => [:d, :e, :f, :g],
                
            }],
            
            :P19 => ["rotate", {
                [3, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k]] => [:d, :e, :f, :g, :h, :i, :j, :k, :a, :b, :c],
                [-2, [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k]] => [:j, :k, :a, :b, :c, :d, :e, :f, :g, :h, :i],
                
            }],
            
            :P20 => ["remove_at", {
                [1, [:a, :b, :c, :d]] => [[:a, :c, :d], :b],
                
            }],
            
            :P21 => ["insert_at", {
                [:new, 1, [:a, :b, :c, :d]] => [:a, :new, :b, :c, :d],
                
            }],
            
            :P22 => ["range", {
                [4, 9] => [4, 5, 6, 7, 8, 9],
                
            }],
            
=begin
            :P26 => ["combinations", {
                [3, [:a, :b, :c, :d, :e, :f]] => [[:a, :b, :c], [:a, :b, :d], [:a, :b, :e], [:a, :b, :f], [:a, :c, :d], [:a, :c, :e], [:a, :c, :f], [:a, :d, :e], [:a, :d, :f], [:a, :e, :f], [:b, :c, :d], [:b, :c, :e], [:b, :c, :f], [:b, :d, :e], [:b, :d, :f], [:b, :e, :f], [:c, :d, :e], [:c, :d, :f], [:c, :e, :f], [:d, :e, :f]],
                
            }],
            
            :P27 => ["group", {
                [[1, 2, 1], ["Aldo", "Beat", "Carla", "David"]] => [[["Aldo"], ["Beat", "Carla"], ["David"]], [["Aldo"], ["Beat", "David"], ["Carla"]], [["Aldo"], ["Carla", "David"], ["Beat"]], [["Beat"], ["Aldo", "Carla"], ["David"]], [["Beat"], ["Aldo", "David"], ["Carla"]], [["Beat"], ["Carla", "David"], ["Aldo"]], [["Carla"], ["Aldo", "Beat"], ["David"]], [["Carla"], ["Aldo", "David"], ["Beat"]], [["Carla"], ["Beat", "David"], ["Aldo"]], [["David"], ["Aldo", "Beat"], ["Carla"]], [["David"], ["Aldo", "Carla"], ["Beat"]], [["David"], ["Beat", "Carla"], ["Aldo"]]],
                
            }],
            
            :P28_a => ["lsort", {
                [[[:a, :b, :c], [:d, :e], [:f, :g, :h], [:d, :e], [:i, :j, :k, :l], [:m, :n], [:o]]] => [[:o], [:d, :e], [:m, :n], [:d, :e], [:a, :b, :c], [:f, :g, :h], [:i, :j, :k, :l]],
                
            }],
            
            :P28_b => ["lfsort", {
                [[[:a, :b, :c], [:d, :e], [:f, :g, :h], [:d, :e], [:i, :j, :k, :l], [:m, :n], [:o]]] => [[:o], [:i, :j, :k, :l], [:f, :g, :h], [:a, :b, :c], [:d, :e], [:m, :n], [:d, :e]],
                
            }],
            
=end
            
            :P31 => ["prime?", {
                [-1] => false,
                [0] => false,
                [1] => false,
                [2] => true,
                [3] => true,
                [4] => false,
                [5] => true,
                [6] => false,
                [7] => true,
                [8] => false,
                [9] => false,
                [9721] => true,
                [9723] => false,
                
            }],
            
            :P32 => ["gcd", {
                [1, 0] => 1,
                [0, 1] => 1,
                [36, 63] => 9,
                [18997050, 19445295] => 21345,
                
            }],
            
            :P33 => ["coprime", {
                [35, 64] => true,
                [1037, 915] => false,
                
            }],
            
            :P34 => ["totient", {
                [10] => 4,
                [72] => 24,
                [10090] => 4032,
                
            }],
            
            :P35 => ["prime_factors", {
                [315] => [3, 3, 5, 7],
                
            }],
            
            :P36 => ["prime_factors_multiplicity", {
                [315] => [[3, 2], [5, 1], [7, 1]],
                
            }],
            
            :P37 => ["totient_improved", {
                [10] => 4,
                [72] => 24,
                [10090] => 4032,
                
            }],
            
            :P38 => ["totient_comparison", {
                [10] => true,
                [72] => true,
                [10090] => true,
                
            }],
            
        }.each do |k, v|
            v[1].each do |i, o|
                if i.length == 1
                    assert_equal(o, method(v[0]).call(i[0]),
                        "#{k.to_s}: #{v[0]}(#{i[0].to_s})")
                elsif i.length == 2
                    assert_equal(o, method(v[0]).call(i[0], i[1]),
                        "#{k.to_s}: #{v[0]}(#{i[0].to_s}, #{i[1].to_s})")
                elsif i.length == 3
                    assert_equal(o, method(v[0]).call(i[0], i[1], i[2]),
                        "#{k.to_s}: #{v[0]}(#{i[0].to_s}, #{i[1].to_s}, #{i[2].to_s})")
                end
            end
        end
    end
end
