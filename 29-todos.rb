# 简易 Todo 代办事项应用

text = File.read("todos.txt")

todos = []
text.each_line do |line|
  todos << line.chomp
end

def disp(todos)
  todos.each_with_index do |todo, index|
    puts "#{index}: #{todo}"
  end
end
disp(todos)

while (true)
  print "请输入指令 1. add 2. remove 3. save，然后按 Enter: "
  command = gets.chomp

  if command == "add"
    print "请输入代办事项: "
    thing = gets.chomp
    todos << thing if not todos.include?(thing)
    disp(todos)
  elsif command == "remove"
    print "请输入要删除的编号: "
    idx = gets.chomp.to_i
    if idx<0 or idx>todos.size
        puts 'invalid number'
        next
    else
        todos.delete_at(idx)
    end
    disp(todos)
  elsif command == "save"
    puts "存盘离开"
    File.open("todos_new.txt", "w") {
        |f|
        todos.each do |line| 
            f.write(line+"\n")
        end
    }
    break;
  else
    puts "看不懂，请再输入一次"
  end
end

