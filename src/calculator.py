def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    # SonarQube will warn if division by zero isn’t handled
    if b == 0:
        raise ValueError("Division by zero is not allowed")
    return a / b
