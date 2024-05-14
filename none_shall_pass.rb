EMAIL = "collin@example.com"
PASSWORD = "goskate"
PASSWORD_VAULT = {aws: {username: "collin", password: "asdfasdf"}} # first it was empty hash--> that we added the values inside

puts "Welcome to None Shall Pass - A Password Manager"
puts "Please sign in to continue"
puts "Enter email: "

user_email = gets.chomp
p user_email
# easiest form of conditionals

# if #some condition is true
# execute some code
# else
# execute some other chunk of code if tbe first condition is not true
# end

if user_email == EMAIL  # comparison
  print "Enter password: "
  user_password = gets.chomp
else
  puts "Invalid email"
  exit
end

if user_password != PASSWORD
  puts "Invalid password"
  exit
else
  puts "Hello, #{user_email}."
  puts "What would you like to do?"
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing services credentials"
  puts "3. Exit"
  user_selection = gets.chomp
end

# case #....expression will be evaluated, the addition to the list of options

# case user_selection
# when "1"
# puts "this will create new service credentials"
# when "2"
# puts "this will retrieve existing credentials"
# else
# puts "Exiting the program. Goodbye."
# exit
# end

case user_selection
when "1"
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] = {} # name of the service will be a top level key, assigning the key to point to the empty hash
  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[new_service] ["username"] = new_service_username
  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[new_service]["password"] = new_service_password

  p PASSWORD_VAULT
when "2"
  puts "Please enter the name of the service you wish to access credentials for: "
  requested_service_name = gets.chomp
  credentials = PASSWORD_VAULT[requested_service_name.to_sym]  #convert to the symbol

  puts "Here are the credentials for #{requested_service_name}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end # corresponds with the do
else
  puts "Exiting the program. Goodbye."
  exit
end
