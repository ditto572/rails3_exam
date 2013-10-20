# coding: utf-8

fruits = ["apple", "orange", "banana"]
big_fruits = fruits.map {|item| item.upcase }
p big_fruits  # ["APPLE", "ORANGE", "BANANA"]
