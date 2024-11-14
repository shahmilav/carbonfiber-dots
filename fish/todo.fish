#!/usr/bin/env fish

set todo_file ~/todo.txt

function todo_add
    set task $argv
    if test (count $task) -eq 0
        echo "Usage: todo add <task>"
        return 1
    end
    echo "$task" >>$todo_file
    echo "Added: $task"
end

function todo_rm
    set index $argv[1]
    if test -z "$index"
        echo "Usage: todo rm <task_number>"
        return 1
    end

    set -l tasks (cat $todo_file)
    set -l task_count (count $tasks)

    if test $index -lt 1 -o $index -gt $task_count
        echo "Invalid task number. Please provide a number between 1 and $task_count."
        return 1
    end

    # Remove the task by skipping the line in the output
    set -l updated_tasks (string split "\n" $tasks)
    set updated_tasks[1..$index-1]
    set updated_tasks[$index+1..-1]
    echo (string join "\n" $updated_tasks) >$todo_file
    echo "Removed task number $index."
end

function todo_show
    if test -e $todo_file
        cat $todo_file | nl
    else
        echo "No tasks found. Your todo.txt is empty."
    end
end

# Check the command and call the appropriate function
switch $argv[1]
    case add
        todo_add $argv[2..-1]
    case rm
        todo_rm $argv[2]
    case show
        todo_show
    case '*'
        echo "Usage: todo {add|rm|show}"
end
