# as a user i want to
#run the app
#what is app what it do
#welcome msg
#options
#choose an option (budget savings goals compare)
# ------BUDGET------
# enter annual salary and have it stolight_cyan ()
# edit expenses (entry-data_category cost freq)
#option to view itemised summary and total 
#move to next step or exit
#- -------------------------------

#----------Savings
#enter initial savings amount and date
#be able to deduct amount from savings amount and add deduction date
#be able to add amount from savings amount and add date
#option to view summary
#option to move to next option or quit
#------------------------

#---------goals
# enter a data_category for goal 
#enter a date added
# enter price
# see all my goals
#---------------------

#--------------compare---------
# see how much of income is taken by what labels inputted and by how much 
# how much disposable income is there
#savings increase percent since last use?
# savings to goals comparison 
#goals to disposable
#----------------

#---------help scrn

class UserData
    attr_accessor :data_category, :inputs
    @@n_entries = 0
# specify the data savings goals etc with data_cat
    def initialize(data_category)
       @data_category = data_category
       @inputs = []
       @@n_entries += 1
               
    end
    def add(category, item, amount, frequency)
        @inputs << {label: category, n: amount, days: frequency}

    end
    def delete_last
        @inputs.pop
    end
    def display_all
        puts "Data Category: #{@data_category.capitalize} User Entries: #{@inputs.length}"
        @inputs.each { | entry | puts "\n\t #{entry[:label]} $#{entry[:n]}  #{entry[:days]}."}
        puts "\n\n#{@data_category.capitalize} Input Total: $#{@inputs.sum {|h|h[:n]}} "    
    end
    def to_s
        return "Data category: #{@data_category.capitalize},\tEntries: #{@inputs.length}"

    end
end
# salary = UserData.new("salary")
# salary.add("income", "salary", 20000, 365)
# salary.add("income", "bonus", 100, 7)



# home = UserData.new("Expense")
# home.add("Home", "mortgage", 500, 7)
# home.add("Home", "pets", 100, 7)
# puts "#{salary}\n#{home}"
require "tty-prompt"
# expenses = TTY::Prompt.new
# continue = TTY::Prompt.new
# user_continue = true
# while user_continue == true do
    # 
# 
    # user_x = expenses.collect do
        # key(:name).ask('Category: ') 
        # key(:expense) do
            # key(:item).ask('Item name: ')
            # key(:amount).ask('Amount: ')
            # key(:frequency).ask('Payment frequency in days: ')
# 
            # user_continue = continue.yes?("add another expense?")
# break if user_continue == false
    #   
        # end
#  
    # end
# end

# ===================================================================
# class UserData
#     # read and write access to categories and inputs 
#     attr_accessor :data_category, :inputs
#     # initialise number of entries 
#     @@n_entries = 0
#     # specify the data budget/ savings/ goals etc with data_cat
#     def initialize(data_category)
#        @data_category = data_category
#        # storage array for user inputs
#        @inputs = []
#        # plus 1 for every entry that's added 
#        @@n_entries += 1
               
#     end
#     # user to add category(home, transport etc) item(rent, pets etc) how often in days
#     def add(category, item, amount, frequency)
#         # push all into the storage array @inputs
#         @inputs << {label: category, n: amount, days: frequency}

#     end
#     # delete the last entry
#     def delete_last
#         @inputs.pop
#     end
#     # display category, amount of entries and all entries 
#     def display_all
#         puts "Data Category: #{@data_category.capitalize} User Entries: #{@inputs.length}"
#         @inputs.each { | entry | puts "\n\t #{entry[:label]} $#{entry[:n]}  #{entry[:days]}."}
#         puts "\n\n#{@data_category.capitalize} Input Total: $#{@inputs.sum {|h|h[:n]}} "    
#     end
#     # overide string to provide meaningful data when called
#     def to_s
#         return "Data category: #{@data_category.capitalize},\tEntries: #{@inputs.length}"

#     end
# end
require "colorize"
def yeet

    puts " Created by Joshua Lack                                                             ".colorize(:color => :magenta, :background => :light_cyan)
    puts " L337 BUDG37 4PP 4 N3RD5                                                                        ".colorize(:color => :light_cyan, :background => :light_cyan)
    
    puts "              ..-==\"\"\"\"==__                                                     ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              /              \\                                                     ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "          ___/   <0)          \\                                                    ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "       _=\"___\\                |                                                   ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "        =__  /                |                                                     ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "           ~~\\_              /___                                                  ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              \"/      ,.=\"~~~\"==_\"\"=__                                         ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              /^ ^  .\" \\ \\ \\ \\ \\ \"=_  \"\"=_                                 ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              | ^ ^ |\"-_ \\ \\ \\ \\ \\ \=_    \"\"=_                              ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "               \\ ^  \___\"-_\\ \\ \\ \\ \\ \=_      \"=_                           ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                \\ ^ ^\\ _____\\_\\_\\_\\_\\_\\_\"=_      \"=_                      ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                 \\ ^  ^\ -_-_-_-_-_-_-_-_-_\"=_      \"=_                          ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                  \\^ ^  \"-=_ -_-_-_-_-_-_-_-_-\"\"=__    \"=_                     ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                   \\\"=_ ^  ^ \"-_ -_-_-_-_-_-_-_-_-_-\"=_    \"=_                 ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                      \\\"=_^     ~~\"\"-===_______________\\      \"=.___________  ".colorize(:color => :light_yellow, :background => :light_cyan)  
    puts "                         \"\"=_      -----______           _______\\_------- /      ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                             \"\"=-_______      \"\"\"\________=. \\  -_ -.\"-- /   ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                              // -- /   ~~~~--_   |         \". \  -_ ~- /          ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                               \\ \\  \\    ______\"\"\"            \"=_\\  \"-./   ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                                  \\ ----- -------\"               -_\\  /          ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                                  // --- /                         - /              ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                                   \\ \\  \\                           ~            ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                                      \\ \\                                         ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "                /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$$ /$$$$$$$                     ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "               /$$__  $$| $$  | $$| $$_____/| $$_____/| $$__  $$                    ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              | $$  \\__/| $$  | $$| $$      | $$      | $$  \\ $$                  ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              | $$      | $$$$$$$$| $$$$$   | $$$$$   | $$$$$$$/                    ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              | $$      | $$__  $$| $$__/   | $$__/   | $$____/                     ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              | $$    $$| $$  | $$| $$      | $$      | $$                          ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "              |  $$$$$$/| $$  | $$| $$$$$$$$| $$$$$$$$| $$                          ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts "               \\______/ |__/  |__/|________/|________/|__/                         ".colorize(:color => :light_yellow, :background => :light_cyan)
    puts " Thanks so much for downloading my app. I hope you find it useful!                                                                                     .".colorize(:color => :light_cyan, :background => :light_cyan)
    puts " If you have any ideas for how CHEEP could be improved please feel free to contribute!                                      .".colorize(:color => :light_cyan,:background => :light_cyan)
    puts " Version 1.0                                      Source githublink                 ".colorize(:color => :magenta, :background => :light_cyan)                                               

                                                    
                                                    

end
yeet