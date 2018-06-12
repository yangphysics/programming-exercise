# 简易 Todo 代办事项应用

text = File.read("todos.txt")

todos = []
text.each_line do |line|
  todos << line.chomp
end

todos.each_with_index do |todo, index|
  puts "#{index}: #{todo}"
end

while (true)
  print "请输入指令 1. add 2. remove 3. save，然后按 Enter: "
  command = gets.chomp

  if command == "add"
    print "请输入代办事项: "
    thing = gets.chomp
    if todos.include?(thing)
        puts "代办事项 is already included"
    else
        todos << thing
    end
  elsif command == "remove"
    print "请输入要删除的编号: "
    idx = puts.to_i
    if idx > todos.length
        print " input index too large "
    elsif idx < 0
        print " negative index is not allowed"
    else
        todos.delete_at(idx)
    end
  elsif command == "save"
    puts "存盘离开"

    File.open('todos_new.txt', 'w') do |f| 
        todos.each do |thing| 
            f.write("#{thing}\n") 
        end
    end
    break;
  else
    puts "看不懂，请再输入一次"
  end
end

