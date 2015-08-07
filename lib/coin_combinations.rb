require('pry')

class Fixnum
  define_method(:change) do
    input = self
    coins =  [0, 0, 0, 0]  # [quarters, dimes, nickles, pennies]
    remainder = 0

    # Coin Limits
    quarter_limit = 3
    dimes_limit = 3
    nickel_limit = 3

    # quarters
    coins[0] = input./(25)
      if coins[0] > quarter_limit
        remain_qtrs = coins[0] - quarter_limit
        coins[0] = quarter_limit
        remainder = remain_qtrs * 25 # Rem = 75
      else
        remainder = remainder + input.%(25)  # w/input of 150, remainder = 0
      end
      remainder

    # dimes
    coins[1] = remainder./(10)
      if coins[1] > dime_limit
        remain_dimes = coins[1] - dime_limit  # remain_dimes = 7
        coins[1] = dime_limit
        remainder = remainder - dimes_limit * 10
      else
        remainder = remainder + input.%(10)  # w/input of 150, remainder = 0
      end
      remainder


    remainder = remainder.%(10)  # w/input of 166, remainder = 6

    # nickles
    coins[2] = remainder./(5)
    remainder = remainder.%(5)

    # pennies
    coins[3] = remainder./(1)
    remainder = remainder.%(1)

    coins
  end
end


# THIS SHIT BELOW WORKS, DON'T DELETE, WORKING ON BONUS ABOVE

# class Fixnum
#     define_method(:change) do
#       input = self
#       coins =  [0, 0, 0, 0]  # [quarters, dimes, nickles, pennies]
#
#
#       # quarters
#       coins[0] = input./(25)
#       remainder = input.%(25)  # w/input of 166, remainder = 16
#
#       # dimes
#       coins[1] = remainder./(10)
#       remainder = remainder.%(10)  # w/input of 166, remainder = 6
#
#       # nickles
#       coins[2] = remainder./(5)
#       remainder = remainder.%(5)
#
#       # pennies
#       coins[3] = remainder./(1)
#       remainder = remainder.%(1)
#
#       coins
#   end
# end
