import math

def square_root(x):
    # Example of poor coding practice for SonarQube to catch:
    if x < 0:
        return math.sqrt(abs(x))  # SonarQube may mark this as a bug
    return math.sqrt(x)
