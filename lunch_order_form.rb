


class Entree
    attr_accessor :name, :price, :calories, :description
    def initialize(name, price, calories, description)
        @name = name
        @price = price
        @calories = calories
        @description = description
    end
end

@entree1 = Entree.new("Traditional Ramen", 6.00, 550, "Ramen noodles in a pork broth with sliced pork, soft boiled egg, shallots, and mushrooms")
@entree2 = Entree.new("Classic PB&J", 3.00, 250, "Wheat bread with creamy peanut butter and homemade strawberry jam")
@entree3 = Entree.new("Slice O'Pizza", 4.00, 300, "A slice of classic pepperoni pizza")


class Side 
    attr_accessor :name, :price, :calories, :description
    def initialize(name, price, calories, description)
        @name = name
        @price = price
        @calories = calories
        @description = description
    end
end

@side4 = Side.new("Steamed Veggies", 1.00, 80, "A mix of steamed carrots, broccoli, cauliflour, and beans")
@side5 = Side.new("Salad", 2.00, 180, "Seasonal greens, with cherry tomatoes, cucumbers, and crutons, tossed in light italian dressing")
@side6 = Side.new("French Fries", 2.00, 380, "Traditional thin sliced french fries")
@side7 = Side.new("Onion Rings", 3.00, 480, "onions that have been sliced into rings, breaded and deep fried")

@food_ordered = []
@total = 0
@wallet = 0
@calories = 0


def total_order
        puts "\nYour Order:"
        puts "---------------"
        puts @food_ordered
        puts "---------------"
        puts "Total Calories = #{@calories}"
        puts "---------------"
        puts "$#{@total}\n\n"
        puts "\n\n If this order is correct, please type 'quit' to submit your order and exit"
        puts "If you are unhappy with your order and would like to make a new one, type 'new'"
        
        finalize = gets.strip
        
    if finalize == "quit"
        exit(0)
    elsif finalize == "new"
        @food_ordered.clear
        @calories = 0
        @total = 0
        wallet
    else
        puts "enter a valid selection"
        total_order
    end
end

def fries_with_that
        if @wallet >= 1
            puts "Would you like to add an extra side? 'y/n' "
            extra = gets.strip
            extra == "y"? choose_side2 : total_order
        else
            total_order
        end
end

def choose_entree
    lunch_menu
    puts "\nYou have $#{@wallet} in your wallet"
    puts "\nEnter the Entree you would like"
    print"> "

    entree_dish_choice = gets.strip

    case entree_dish_choice
        when "1"
            if @wallet >= @entree1.price + 2
                    @food_ordered << @entree1.name
                    @total = @total + @entree1.price
                    @wallet = @wallet - @entree1.price
                    @calories = @calories + @entree1.calories
            else
                puts "You will not have enough money to order two sides."
                puts "Please choose a different entree"
                choose_entree
            end
            
        when "2"
            if @wallet >= @entree2.price + 2
                    @food_ordered << @entree2.name
                    @total = @total + @entree2.price
                    @wallet = @wallet - @entree2.price
                    @calories = @calories + @entree2.calories
            else
                puts "You will not have enough money to order two sides."
                puts "Please choose a different entree"
                choose_entree
            end
                
        when "3"
            if @wallet >= @entree3.price + 2
                    @food_ordered << @entree3.name
                    @total = @total + @entree3.price
                    @wallet = @wallet - @entree3.price
                    @calories = @calories + @entree3.calories
            else
                puts "You will not have enough money to order two sides."
                puts "Please choose a different entree"
                choose_entree
            end
        when "n"
            food_descriptions

        else
            puts "Please enter a valid choice"
            choose_entree
    end

    choose_side1
end

def choose_side2
    lunch_menu
    puts "You have $#{@wallet} left in your wallet"
    puts "Enter the next side you would like"
    print "> "
    
    side_dish_choice = gets.strip

    case side_dish_choice
        when "4"
            if @wallet >= @side4.price
                @food_ordered << @side4.name 
                @total = @total + @side4.price
                @wallet = @wallet - @side4.price
                @calories = @calories + @side4.calories
            else
                puts "You do not have enough money for that item"
                puts "Please choose a different item"
                choose_side2
            end

        when "5"
            if @wallet >= @side5.price 
                @food_ordered << @side5.name
                @total = @total + @side5.price
                @wallet = @wallet - @side5.price
                @calories = @calories + @side5.calories
            else
                puts "You do not have enough money for that item"
                puts "Please choose a different item"
                choose_side2
            end

        when "6"
            if @wallet >= @side6.price 
                @food_ordered << @side6.name
                @total = @total + @side6.price
                @wallet = @wallet - @side6.price
                @calories = @calories + @side6.calories
            else
                puts "You do not have enough money for that item"
                puts "Please choose a different item"
                choose_side2
            end

        when "7"
            if @wallet >= @side7.price 
                @food_ordered << @side7.name
                @total = @total + @side7.price
                @wallet = @wallet - @side7.price
                @calories = @calories + @side7.calories
            else
                puts "You do not have enough money for that item"
                puts "Please choose a different item"
                choose_side2
            end
        else
            puts "Please choose a valid side dish"
    end
    fries_with_that
end


def choose_side1
    lunch_menu
    puts "You have $#{@wallet} left in your wallet"
    puts "Enter the first side you would like"
    print "> "
    
    side_dish_choice = gets.strip

    case side_dish_choice
        when "4"
            if @wallet >= @side4.price
                @food_ordered << @side4.name 
                @total = @total + @side4.price
                @wallet = @wallet - @side4.price
                 @calories = @calories + @side4.calories
            else
                puts "You do not have enough money for that item"
                puts "Please choose a different item"
                choose_side1
            end

        when "5"
            if @wallet >= @side5.price + 1
                @food_ordered << @side5.name
                @total = @total + @side5.price
                @wallet = @wallet - @side5.price
                @calories = @calories + @side5.calories
            else
                puts "You do not have enough money for that item plus another"
                puts "Please choose a different item"
                choose_side1
            end

        when "6"
            if @wallet >= @side6.price + 1
                @food_ordered << @side6.name
                @total = @total + @side6.price
                @wallet = @wallet - @side6.price
                @calories = @calories + @side6.calories
            else
                puts "You do not have enough money for that item plus another"
                puts "Please choose a different item"
                choose_side1
            end

        when "7"
            if @wallet >= @side7.price + 1
                @food_ordered << @side7.name
                @total = @total + @side7.price
                @wallet = @wallet - @side7.price
                @calories = @calories + @side7.calories
            else
                puts "You do not have enough money for that item plus another"
                puts "Please choose a different item"
                choose_side1
            end
        else
            puts "Please choose a valid side dish"
            choose_side1
    end
    choose_side2
end

def lunch_menu
    puts "\n******** Student Lunch Order Form **********"
    puts "\nYou must order at least one entree and two sides"
    puts "\nENTREES\n"
    puts "\t1. Traditional Ramen $6.00"
    puts "\t2. Classic PB&J $3.00"
    puts "\t3. Slice O'Pizza $4.00"
    puts "\nSIDES\n"
    puts "\t4. Steamed Veggies (yuck!) $1.00"
    puts "\t5. Salad (only slightly better) $2.00"
    puts "\t6. French Fries (now we are talkin!) $2.00"
    puts "\t7. Onion Rings $3.00"
    puts "\n To view descriptions and nutritional info before ordering, type 'n'"
end

def food_descriptions
    puts "\nENTREES\n"
    puts "\t1. Traditional Ramen $6.00"
    puts "\t2. Classic PB&J $3.00"
    puts "\t3. Slice O'Pizza $4.00"
    puts "\nSIDES\n"
    puts "\t4. Steamed Veggies (yuck!) $1.00"
    puts "\t5. Salad (only slightly better) $2.00"
    puts "\t6. French Fries (now we are talkin!) $2.00"
    puts "\t7. Onion Rings $3.00"
    puts "\n\t8. Back to order form"
    puts "\nChoose the item you would like to know more about"

    description_choice = gets.strip

    case description_choice
        when "1"
            puts @entree1.description
            puts "calories #{@entree1.calories}"
            food_descriptions
        when "2"
            puts @entree2.description
            puts "calories #{@entree2.calories}"
            food_descriptions
        when "3"
            puts @entree3.description
            puts "calories #{@entree2.calories}"
            food_descriptions
        when "4"
            puts @side4.description
            puts "calories #{@side4.calories}"
            food_descriptions
        when "5"
            puts @side5.description
            puts "calories #{@side5.calories}"
            food_descriptions
        when "6"
            puts @side6.description
            puts "calories #{@side6.calories}"
            food_descriptions
        when "7"
            puts @side7.description
            puts "calories #{@side7.calories}"
            food_descriptions
        when "8"
            choose_entree
        else 
            puts "enter a valid selection"
            food_descriptions
    end
    
end   

def wallet
    puts "Please enter how much money you have to spend"
    @wallet = gets.strip
    @wallet = @wallet.to_i
    
    if @wallet >= 5
        choose_entree
    else
        puts "You do not have enough money to buy lunch today.  Goodbye."
        exit(0)
    end
end

wallet
