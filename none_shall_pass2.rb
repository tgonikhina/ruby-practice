EMAIL = "collin@example.com"
PASSWORD = "goskate"
PASSWORD_VAULT = {aws: {username: "collin", password: "asdfasdf"}} # first it was empty hash--> that we added the values inside

def welcome_message
    puts "Welcome to None Shall Pass - A Password Manager"
end

def prompt_user_for_email
    puts "Please sign in to continue"
    print "Enter email: "
    gets.chomp
end


def verify_user_email(user_email)
    if user_email != EMAIL  # if user email not equal to the email constant 
        puts "Invalid email"
        exit
    end
end


def prompt_user_for_email 
    print "Enter password: "
    gets.chomp 
end

def verify_user_password(user_password)
    if user_password != PASSWORD
        puts "Invalid password"
        exit
    end
end 



def greet_user(user_email)
  puts "Hello, #{user_email}."
  puts "What would you like to do?"
end

def menu_options
    puts "1. Add new service credentials"
  puts "2. Retrieve an existing services credentials"
  puts "3. Exit"
end 


def get_user_menu_selection #calling the method after the previous 
  gets.chomp
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

def handle_user_selection (user_selection)
    case user_selection
    when "1"
        new_service = set_new_serice_name
        set_username_for(new_service)
        set_password_for(new_service)
    when "2"
        requested_service_name = retrieve_service_name
        credentials = retrieve_service_credentials_for(requested_service_name)
        display_service_credentials(requested_service_name, credentials)
    else
        exit



def set_new_service_name
    print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service.to_sym] = {}
  new_service
end


def set_username_for(service)
    print "Please enter the username for this new service: "
    new_service_username = gets.chomp
    PASSWORD_VAULT[service.to_sym][:username] = new_service_username
end

def set_password_for(service)
    pring "Please enter the password for this new service: "
    new_service_password = gets.chomp
    PASSWORD_VAULT[service.to_sym][:password] = new_service_password
end

def retrieve_service_name
    print "Please enter the name of the service you wish to access credentials for: "
    gets.chomp
end

def retrieve_service_credentials_for(service_name)
    PASSWORD_VAULT[service_name.to_sym]

def display_service_credentials(service_name, credentials)
    puts "Here are the credentials for #{service_name}:"
    credentials.each do |key, val|
      puts "#{key}: #{val}"
end


def  exit_program
    puts "Exiting the programm. Goodbye."
    exit
end

welcome_message