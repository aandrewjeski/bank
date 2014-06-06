require_relative 'bank_transaction'
require 'csv'


def load_balances
  @starting_balance = []
  CSV.foreach("balances.csv", headers: true, header_converters: :symbol, converters: :integer ) do |row|
    @starting_balance << row.to_hash
  end
  @starting_balance
end

def load_bank_data
  @accounts = []
  CSV.foreach("bank_data.csv", headers: true, header_converters: :symbol, converters: :integer ) do |row|
    @accounts << row.to_hash
  end
  @accounts
end

class BankAccount
	def initialize(starting_balance, current_balance, summary)
		@starting_balance = starting_balance
		@current_balance = current_balance
		@summary = summary
	end
  
end



