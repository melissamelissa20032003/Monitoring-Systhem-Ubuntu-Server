#!/bin/bash


get_number_of_users() {
      who | wc -l
}
# Example usage:
number_of_users=$(get_number_of_users)
echo "$number_of_users"
