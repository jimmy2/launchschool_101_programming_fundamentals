# mortgage_calculator.rb

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Morgage Calculator")

  # Get loan amount
  loan = nil
  loop do
    prompt("What's your loan ammount?")
    loan = Kernel.gets().chomp()
    loan.gsub!(",", "") # remove any commas
    loan.gsub!("$", "") # remove any dollar signs
    loan = loan.to_f()
    if loan.to_s.empty?() || loan < 0 || loan.zero?()
      prompt("Sorry, you must enter a valid number.")
    else
      break
    end
  end

  # Get the interest rate
  yearly_rate = nil
  loop do
    prompt("What's the interest rate (p.a.)?")
    prompt("For example if 4.95% enter 4.95")
    yearly_rate = Kernel.gets().chomp().to_f() * 0.01
    if yearly_rate.to_s.empty?() || yearly_rate < 0 || yearly_rate.zero?()
      prompt("Sorry, please enter a valid interest rate.")
    else
      break
    end
  end

  # Get the loan duration
  loan_duration_years = nil
  loop do
    prompt("How many years is the loan for?")
    loan_duration_years = Kernel.gets().chomp().to_i()
    if loan_duration_years > 0
      break
    else
      prompt("Sorry, please enter a valid number of years.")
    end
  end

  # Calculations
  monthly_rate = yearly_rate / 12
  loan_duration_months = loan_duration_years * 12

  weekly_rate = yearly_rate / 52
  loan_duration_weeks = loan_duration_years * 52

  monthly_payments = loan *
                     (monthly_rate /
                     (1 - (1 + monthly_rate)**-loan_duration_months))
  weekly_payments = loan *
                    (weekly_rate /
                    (1 - (1 + weekly_rate)**-loan_duration_weeks))

  # based on monthly payments
  yearly_payments = (monthly_payments * 12).round(2)
  monthly_payments = monthly_payments.round(2)
  total_interest_payable = ((monthly_payments * loan_duration_months) - loan)
  # based on weekly payments
  weekly_payments = weekly_payments.round(2)

  # Output
  results_prompt = <<-MSG
RESULTS
    Your yearly repayments are:                  $#{'%.2f' % yearly_payments}
    Your monthly repayments are:                 $#{'%.2f' % monthly_payments}
    Your weekly repayments are:                  $#{'%.2f' %weekly_payments}
    The total interest payable over #{loan_duration_years} years is: $#{'%.2f' % total_interest_payable.round(2)}
  MSG

  prompt(results_prompt)

  # Do it again?
  prompt("Would you like to do another calculation? Y/N")
  reply = Kernel.gets().chomp().downcase()
  break unless reply.start_with?('y')
end

prompt("Thanks for using the mortgage calculator!")
