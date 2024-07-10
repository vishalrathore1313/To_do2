


class ToDOList

def initialize()

    @tasks=[]

    @task_counter=0;
end   


def Add_task(title)

@task_counter+=1;    

@tasks << {number:@task_counter,title:title,completed:false};

puts "Add task << #{title} >> successfully at Serial No. #{@task_counter}";


end   


def Show_list()

 puts "To-Do List"   
#  print @tasks

@tasks.each do |task|
   
status=task[:completed]? "Completed" : "Incomplete"  ;


puts "Task no=#{task[:number]}  Status=[#{status}] task=#{task[:title]}"  ;
puts

 end

end    


def Edit_status(task_no)

task=@tasks.find{|t| t[:number]==task_no};


if task

  task[:completed]=true;

  puts"task #{task_no} mask as Completed"

else
      puts "Task not Found!!!"
end  

end  



def Delete_task(task_no)

  task=@tasks.find{|t| t[:number]==task_no};
  
  
  
  if task
  
    @tasks.delete(task);

    puts  "task <<#{task[:title]}>> has been deleted"
  
  
  else
        puts "Task not Found!!!"
  end  
  
  end  
  


def Exit()

  puts "Existing Program"
   
  exit
end  


def start()

loop do

print <<EOF
  
Welcome to TO-DO Task Manager
  


 <<Choose your Option>>

    1.Add_task

    2.Show_list

    3.Edit_status

    4.Delete_taskpl
    
    5.Exit

EOF

option=gets.chomp

case option

when "1"  
    puts 'Enter your task'

    title=gets.chomp

    Add_task(title)
    
  when "2"  
    Show_list()
    
  when "3"  
    puts "Enter Task NO. to Update status";

    task_no=gets.chomp.to_i
    Edit_status(task_no)
    
   when "4"  
    puts "Enter Task NO. to Delete";

    task_no=gets.chomp.to_i
    Delete_task(task_no)

   when "Exit"  
    
    Exit()
    
  else  
    
    puts "Invalid Option!!!"
    
end

end

end    

end

a1=ToDOList.new
a1.start
