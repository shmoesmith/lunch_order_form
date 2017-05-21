
require 'pry'
#BONUSES
#user has wallet total they start with and they cannot exceed what they can pay for
 #program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
#main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
#descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
#display to the user not only their total but the total fat content / calories / carbs / ect...


class Entree
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

@entree1 = Entree.new("Traditional Ramen", 6.00)
@entree2 = Entree.new("Classic PB&J", 3.00)
@entree3 = Entree.new("Slice O'Pizza", 4.00)


class Side 
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

@side4 = Side.new("Steamed Veggies", 1.00)
@side5 = Side.new("Salad", 2.00)
@side6 = Side.new("French Fries", 2.00)
@side7 = Side.new("Onion Rings", 3.00)

@food_ordered = []
@total = 0
@wallet = 0


def total_order
        puts "\nYour Order:"
        puts "---------------"
        puts @food_ordered
        puts "---------------"
        puts "$#{@total}\n\n"
        exit(0)
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
    puts "You have $#{@wallet} in your wallet"
    puts "Enter the Entree you would like"
    print"> "

    entree_dish_choice = gets.strip

    case entree_dish_choice
        when "1"
            if @wallet >= @entree1.price + 2
                    @food_ordered << @entree1.name
                    @total = @total + @entree1.price
                    @wallet = @wallet - @entree1.price
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
            else
                puts "You will not have enough money to order two sides."
                puts "Please choose a different entree"
                choose_entree
            end
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
            else
                puts "You do not have enough money for that item"
                puts "Please choose a different item"
                choose_side2
            end

        when "7"
            if @wallet >= @side7.price 
                @food_ordered << @side7.name
                @total = @total + @side7.price
                @wallet = @wallet - side7.price
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
