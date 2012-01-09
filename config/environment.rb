# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Netball::Application.initialize!

Date::DATE_FORMATS[:table] = '%A %d/%m'