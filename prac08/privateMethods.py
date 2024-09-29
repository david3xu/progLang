class Example:
    def __init__(self):
        self.__private_attribute = "This is a 'private' attribute"

    def public_method(self):
        print("This is a public method")
        self.__private_method()

    def __private_method(self):
        print("This is a 'private' method")

example = Example()
example.public_method()  # Works
# example.__private_method()  # Raises AttributeError
# print(example.__private_attribute)  # Raises AttributeError


# However, name mangling can be bypassed:
example._Example__private_method()  # Works, but not recommended: name mangling is intended to be a way to prevent accidental access to private attributes and methods
print(example._Example__private_attribute)  # Works, but not recommended

