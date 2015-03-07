code = <<END
puts 2 + 2
END
# puts RubyVM::InstructionSequence.compile(code).disasm

code = <<END
10.times do |n|
puts n
end
END

# puts RubyVM::InstructionSequence.compile(code).disasm

# <Arg> メソッドやブロックの通常の引数
# <Rest> *演算子(splat 演算子と呼ばれる)でまとめて渡された名前なし引数の
# 配列
# <Post> 名前なし引数の後に現れる通常の引数
# <Block> &演算子を使って渡された Proc オブジェクト
# <Opt=i> デフォルト値付きの引数。整数値 i はデフォルト値を設定するプログ
# ラム箇所へのプログラムカウンタとなっている。デフォルト値は、ローカ ルテーブル内に保存されているわけではなく、YARV 命令列中で設定さ れる

code = <<-END
  def complex_formula(a, b, *argc, c)
    a + b + args.size + c
  end
END

# puts RubyVM::InstructionSequence.compile(code).disasm

code = <<-END
  def add_two_optional(a, b = 5)
    sum = a + b
  end
END

puts RubyVM::InstructionSequence.compile(code).disasm
