

@cheat_sheet_arr = Array.new
File.readlines('newbash.txt').each { |line| @cheat_sheet_arr << line}



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
        end
    end



    def cheat_sheet_menu
        puts "-----------------Cheat Sheets-----------------------"
        puts " (There may not be a cheat sheet for all commands)"
        puts @cheat_sheet_arr
        puts "Type the command you would like to know more about"
        puts "Otherwise, type 'back' to get to the main menu"
        print "> "

        more = gets.chomp

        if more == "back"
            main_menu
        elsif more != "back"
            puts `man #{more}`
        end
        
        puts "Hit any key to review the command list again"
        puts "Otherwise, type 'back' to get to the main menu"
            
        again = gets.chomp
        
            if again == "back"
                main_menu
            else
                cheat_sheet_menu
            end
    end


    
    def main_menu
        puts "------Command Line Help-------"
        puts "1: List of all BASH command line commands you may be able to get a cheat sheet for"
        puts "2: search for a cheat sheet on a known BASH command"
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
end
main_menu