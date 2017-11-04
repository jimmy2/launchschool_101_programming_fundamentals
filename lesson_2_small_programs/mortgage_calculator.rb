# mortgage_calculator.rb

WEEKS_IN_A_MONTH = 4.34524

def prompt(message)
  Kernel.puts("=> #{message}")
end

def monetary_format(number)
  number = format('%.2f', number).to_s
  number_array = number.split('.')
  front = number_array[0].to_s
  back = number_array[1].to_s
  front = front.reverse.scan(/\d{3}|.+/).join(",").reverse
  "$#{front}.#{back}"
end

def percentage_format(number)
  "#{format('%.2f', number)}%"
end

def validate_loan(input)
  input.delete!(",")
  input.delete!("$")
  return false if input.empty?()
  input = input.to_f
  return false if input < 0 || input.zero?()
  true
end

def validate_interest_rate(input)
  return false if input.empty?()
  input = input.to_f
  return false if input < 0 || input.zero?()
  true
end

def validate_duration(input)
  return false if input.empty?()
  return false if input.to_i < 0
  return true if input.to_i.to_s == input
end

loop do
  prompt("Morgage Calculator")

  # Get loan amount
  loan = nil
  loop do
    prompt("What's your loan amount? (How much have you borrowed?)")
    prompt("e.g. $30,000, 400000, $1045.50")
    loan = Kernel.gets().chomp()
    if validate_loan(loan)
      loan = loan.to_f
      break
    else
      prompt("Sorry, you must enter a valid monetary value.")
    end
  end

  # Get the interest rate
  yearly_rate = nil
  loop do
    prompt("What's the interest rate (p.a.)?")
    prompt("For example if 4.95%, enter 4.95")
    yearly_rate = Kernel.gets().chomp()
    if validate_interest_rate(yearly_rate)
      yearly_rate = yearly_rate.to_f() * 0.01
      break
    else
      prompt("Sorry, please enter a valid interest rate above 0.0%.")
    end
  end

  # Get the loan duration
  loan_duration_months = nil
  loop do
    response = nil
    loop do
      prompt("Is your loan in years (y), months (m), or both (b)?")
      response = Kernel.gets().chomp().downcase()
      response = response.strip()
      if %w(y m b).include?(response[0])
        break
      else
        puts "Please type y, m, or b (years, months, both)"
      end
    end
    case response[0]
    when 'y'
      loop do
        prompt("How many years is your loan?")
        years = Kernel.gets().chomp()
        if validate_duration(years)
          unless years.to_i == 0
            loan_duration_months = (years.to_i * 12)
            break
          end
          prompt("Please enter a number of years greater than zero (0):")
        else
          prompt("Please enter a number of years:")
        end
      end
      break
    when 'm'
      loop do
        prompt("How many months is your loan?")
        months = Kernel.gets().chomp()
        if validate_duration(months)
          unless months.to_i == 0
            loan_duration_months = months.to_i
            break
          end
          prompt("Please enter a number of months greater than zero (0):")
        else
          prompt("Please enter a number of months:")
        end
      end
      break
    else
      loop do
        prompt("1/2: How many years is your loan")
        years = Kernel.gets().chomp()
        prompt("2/2: And how many months?")
        months = Kernel.gets().chomp()
        if validate_duration(years) && validate_duration(months)
          unless years.to_i == 0 && months.to_i == 0
            loan_duration_months = (years.to_i * 12) + months.to_i
            break
          end
          prompt("Please make sure both months and years are not zero (0):")
        else
          prompt("Please enter the years and months as numbers again:")
        end
      end
      break
    end
  end

  # Calculations
  monthly_rate = yearly_rate / 12
  weekly_rate = yearly_rate / 52

  loan_duration_weeks = (loan_duration_months * WEEKS_IN_A_MONTH)

  monthly_payments = loan *
                     (monthly_rate /
                     (1 - (1 + monthly_rate)**-loan_duration_months))
  weekly_payments = loan *
                    (weekly_rate /
                    (1 - (1 + weekly_rate)**-loan_duration_weeks))

  # based on monthly payments
  total_interest_payable = ((monthly_payments * loan_duration_months) - loan)

  # Output
  results_prompt = <<-MSG
  RESULTS
    For your #{monetary_format(loan)} over #{loan_duration_months} months at #{percentage_format(yearly_rate * 100)}:

    Your monthly repayments would be:     #{monetary_format(monthly_payments)}
    Your weekly repayments would be:      #{monetary_format(weekly_payments)}
    The total interest payable would be:  #{monetary_format(total_interest_payable)}
  MSG

  prompt(results_prompt)

  # Do it again?
  prompt("Would you like to do another calculation? (y/n)")
  reply = Kernel.gets().chomp().downcase()
  break unless reply.start_with?('y')
end

prompt("Thanks for using the mortgage calculator!")
