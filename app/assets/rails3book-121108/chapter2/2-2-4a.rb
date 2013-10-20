# coding: utf-8

begin
  File.open("some.txt") do |f|
    print f.gets
  end
rescue
  warn "エラー発生！"
end
