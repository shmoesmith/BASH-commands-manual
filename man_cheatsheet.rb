
@cheat_sheet_arr = ['ls', 'cd','mv', 'mkdir', 'rmdir', 'touch', 'rm', 'locate', 'clear']

    def search_menu
        puts "----Search-----"
        puts "Enter a BASH command to see if there is a help page for it"
        puts "Otherwise, type 'back' to get to the main menu"
        print "> "

        bash_command = gets.chomp

        if bash_command == "back"
            main_menu
        elsif bash_command != "back"
            puts `man #{bash_command}`
            search_menu
        else
            puts "Please enter a valid command"
        end
    end



    def cheat_sheet_menu
        puts "---Cheat Sheets---"
        puts @cheat_sheet_arr
        puts "type the command you would like to know more about"
        print "> "

        more = gets.chomp

        puts `man #{more}`
        main_menu

    end


    
    def main_menu
        puts "------Command Line Help-------"
        puts "1: Popular commands list"
        puts "2: search"
        puts "3: exit"
        print "> "

    main_choice = gets.chomp
    
    case main_choice
        when "1"
            cheat_sheet_menu
        when "2"
            search_menu
        when "3"
            exit(0)
        else
            puts "enter valid selection"
    end



# output man page for selection

#make quit function


end
main_menu