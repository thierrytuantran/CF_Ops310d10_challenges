import requests

url = input("Enter a destination URL: ")
print("Select HTTP method:")
print("1. GET")
print("2. POST")
print("3. PUT")
print("4. DELETE")
print("5. HEAD")
print("6. PATCH")
print("7. OPTIONS")

method_number = input("Enter number: ")

# Mapping from number to HTTP method
method_mapping = {"1": "GET", "2": "POST", "3": "PUT", "4": "DELETE", "5": "HEAD", "6": "PATCH", "7": "OPTIONS"}

# Use the mapping or default to "UNKNOWN" if the number is invalid
method = method_mapping.get(method_number, "UNKNOWN")

print(f"About to send a {method} request to {url}. Confirm? (Y/N)")
confirm = input().lower()

if confirm == "y":
    response = requests.request(method, url)

    print(response.status_code, end=" - ")

    if response.status_code == 404:
        print("Site not found")
    elif response.status_code == 403:
        print("Forbidden")
    elif response.status_code == 500:
        print("Server error")
    else:
        print("OK")

    print(response.headers)

else:
    print("Request cancelled")
