import os

# Name of the text file
file_name = "grocery_store.txt"

# Open the file in write mode and append three lines
with open(file_name, "w") as file:
    file.write("Snack\n")
    file.write("Meat\n")
    file.write("Pharmacy\n")

# Open the file in read mode to print the first line
with open(file_name, "r") as file:
    first_line = file.readline()
    print("First line:", first_line.strip())

# Remove (delete) the file
os.remove(file_name)
