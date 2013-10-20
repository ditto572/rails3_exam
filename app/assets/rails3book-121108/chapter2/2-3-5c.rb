# coding: utf-8

require "active_support/core_ext"

now = Time.now
puts now.beginning_of_week
puts now.next_month.beginning_of_month
