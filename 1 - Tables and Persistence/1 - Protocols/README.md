# Protocols

A protocol is a set of rules or procedures that defines how things are done. In computer science, computers communicate with each other using protocols like `HTTP` (Hypertext Transfer Protocol) and `TCP/IP` (Transmission Control Protocol/Internet Protocol). `HTTP` is a standard that defines how data from a website is communicated between two computers. `TCP/IP` is a communication standard that defines how computers find and send data to each other.

In programming, a protocol defines the properties or methods that an object must have to complete a task. For example, the `Equatable` protocol states that a type must define a `==` method to check if two instances are equal to each other.

In this lesson, I learned what protocols are, when to use them, and how to write my own. I also learned about delegation, a pattern that allows objects to communicate with each other.

## What I Learned
- What protocols are and why they are used.
- How to `adopt` and `conform to` Swift protocols.
- How to print custom information about objects to the console.
- How to check if instances of custom types are equal, greater, or less than each other.
- How to set up custom types so their instances can be saved and loaded from a file.
- How to make one type do work for another using `delegation`.

## Vocabulary
- `adopt`: Accept and apply a protocol.
- `Codable`: A Swift protocol indicating that a type can be encoded and decoded.
- `Comparable`: A protocol that allows comparing instances of a type to determine their relative order.
- `conform to`: Satisfy the requirements of a protocol.
- `CustomStringConvertible`: A protocol allowing the custom representation of an object as a string.
- `delegate`: An object that performs tasks on behalf of another object.
- `Equatable`: A protocol that requires the implementation of the `==` method to compare the equality of two instances.
- `implementation`: The practical realization of a protocol in a type.
- `protocol`: A set of rules that defines how a type should behave.
- `read-only`: Property that can only be read.
- `read/write`: Property that can be read and modified.
