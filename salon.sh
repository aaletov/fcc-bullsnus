#!/bin/bash

# Connect to PostgreSQL database
PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

# Display services menu
DISPLAY_SERVICES() {
  echo -e "\n~~~ Welcome to the Salon ~~~\n"
  echo "Here are our available services:"
  # Get all services from database
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  echo "$SERVICES" | while IFS="|" read SERVICE_ID SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
}

# Main script
MAIN_MENU() {
  # Display services
  DISPLAY_SERVICES
  
  # Get service selection
  echo -e "\nPlease select a service:"
  read SERVICE_ID_SELECTED
  
  # Check if service exists
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  
  # If service doesn't exist, show menu again
  if [[ -z $SERVICE_NAME ]]
  then
    echo -e "\nInvalid service selection."
    MAIN_MENU
    return
  fi
  
  # Get customer phone number
  echo -e "\nPlease enter your phone number:"
  read CUSTOMER_PHONE
  
  # Check if customer exists
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  
  # If customer doesn't exist, get name and add to database
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "\nPlease enter your name:"
    read CUSTOMER_NAME
    
    # Add customer to database
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi
  
  # Get appointment time
  echo -e "\nPlease enter the time for your appointment:"
  read SERVICE_TIME
  
  # Get customer_id
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  
  # Insert appointment
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  
  # Get service name for output message
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  
  # Output confirmation message
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

# Run main menu
MAIN_MENU