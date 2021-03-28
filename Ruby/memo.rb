require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_number = gets.to_i 

if memo_number == 1
     puts "拡張子を除いたファイル名を入力してください"
  
 file_name = gets.to_s.chomp
  
    puts "メモしたい内容を入力して下さい"
    p "完了したら Ctrl+D を入力します"
  
memo_type = readlines#複数行の文字列を、1行ごとの配列として取得　
  
CSV.open("#{file_name}.csv",'w') do |csv|
  csv << ["#{memo_type}"]
    puts "新規メモ作成完了"
end


else 
    puts "既存のcsvファイルに追記します"
  
    puts "拡張子を除いたファイル名を入力してください"
   
   searchfile_name = gets.to_s.chomp
  
    puts "追記したい内容を入力してください"
  
  
  
    p "完了したら Ctrl+D を入力します"

  memo_type = readlines.to_s 

 CSV.open("#{searchfile_name}.csv", 'a') do |csv|
  csv << ["#{memo_type}"]
  
  puts "追記完了"

 end
 
 end