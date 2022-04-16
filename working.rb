require 'colorize' # colour background and font 
require_relative("./headings") # headings and invalid warning (maybe use tty for invalids)
require "tty-prompt" # menus and prompts
# require money - avoid weird rounding with float numbers?

#-----Cheep Budget app Start-----
def cheep
    # init menu
    main_menu = TTY::Prompt.new
    # init user name 
    name = TTY::Prompt.new
    # init storage container for all user details till push to file
    data_storage_container = []
    # init salary variable
    salary = TTY::Prompt.new
    # init expenses 
    expense = TTY::Prompt.new
    continue = TTY::Prompt.new
    # category entries loop init
    prompt = TTY::Prompt.new
    # init savings prompt
    savings = TTY::Prompt.new
    
    Headings.start
    
    user_name = name.ask("Begin by entering a user name", default: ENV["USER"])
    
    data_storage_container << user_name 
    
    
    menu = main_menu.select("To continue, please choose one of the following options: ", %w(Budget))
    # make case: if the menu choice is comparable, do that thing
    case menu
    #-----start Budget----- 
    when "Budget"
        
        Headings.budget
        user_salary = salary.ask("To start using the budget tool, please enter your annual salary: ", required: true, convert: :float)
        
        user_expenses = expense.collect do
        key(:category).ask("Start by adding a category name for your expenses: ", default: "Home" )

        while prompt.yes?("Add an entry to this category?")
            key(:item).values do
                key(:name).ask("Enter a name for the expense: ", required: true)
                key(:cost).ask("Enter the cost of payments $", required: true, convert: :float,)
                # (7,14,30,365)
                key(:freq).ask("Enter the payment frequency in days: ", required: true, default: 7, validate: /(7|14|30|365)/ )
            end
        end
        end
       puts "Category: #{user_expenses[:category]}".black.on_white

        
        user_expenses[:item].each { | item | puts "#{item[:name].capitalize}: #{item[:freq]}\t$#{item[:cost]}" }
        # puts "Total: $#{user_expenses[:category][:item][:cost].sum}"    
        






        else
        puts "invalid salecta rastamun"
    end




end
cheep

