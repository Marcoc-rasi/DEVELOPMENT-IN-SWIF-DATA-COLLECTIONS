# Swift Generics

An important design principle of the Swift programming language is progressive disclosure: the practice of revealing concepts over time as the user gains experience and confidence, rather than all at once. For example, you can use Swift as a beginner without understanding anything about protocols, even though you are using protocols every time you use even basic types like Int or String.

Generics are another example of progressive disclosure. They are a powerful feature of Swift, but to use them, you should feel comfortable with the fundamentals of the language. Like any new concept, generics may seem confusing at first, but you've already mastered all the necessary concepts to start exploring them. By the end of this unit, you'll be using generics to make your projects more readable and maintainable.

## What I Learned
- How to identify generic types and methods by their syntax.
- How to use generics to make code reusable.
- How to use generics in conjunction with protocols.
- How to use associated types with protocols.

## Vocabulary
- `associated type`: A type associated with a protocol that is specified when adopting the protocol.
- `syntactic sugar`: Simplified syntax that makes the code more readable and concise.
- `type alias`: An alternative name that can be given to an existing type.
- `type parameter`: A type used as a placeholder to represent specific types when using a generic type.

##### Life-formSearch

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8552000d-9ec3-4637-8f35-e64546a4e3ba

The `structures` and `classes` provided have been designed to handle network requests and decode responses in an application that interacts with the Encyclopedia of Life (EOL) API. These components are fundamental for obtaining and manipulating biological data within the application.

First, `structures` have been defined to represent data related to objects in EOL. The `EOLItem structure` encapsulates essential information about an object, such as its "common name," "scientific name," and "unique identifier." In particular, the `commonName` and `scientificName` properties are used to describe the common and scientific names of the object, respectively. Additionally, `id` is used to uniquely identify the object.

On the other hand, the `SearchResponse structure` serves to encapsulate a search response, which consists of a list of `EOLItem` objects. This structure is crucial for the application, as it stores the results of searches conducted on EOL.

The `EOLController class` plays a central role in the application as it acts as a network request controller. The implementation of this controller follows a Singleton pattern, meaning it provides a single global instance accessible throughout the application. This instance is accessible through the static property `shared`. The controller offers a method called `sendRequest` that allows for sending network requests asynchronously and handling the responses.

The `sendRequest method` is adapted to work with types that conform to the `APIRequest protocol.` This protocol defines two key requirements: `urlRequest` and `decodeResponse.` The former is responsible for constructing the URL request based on the specific data of each request, and the latter is used to decode the response of the request into a specific type. The implementation of `decodeResponse` depends on the nature of the request and the expected response type.

The controller also includes an extension of the `Data structure` that provides the capability to convert JSON data into a readable and formatted string. This is highly useful for debugging, as it allows for visualizing the structure of JSON response data.

Furthermore, `structures` representing specific requests to the EOL API have been defined. Each request `structure`, such as `EOLSearchAPIRequest,` `EOLItemDetailAPIRequest,` `EOLHierarchyAPIRequest,` and `EOLImageAPIRequest,` implements the `APIRequest protocol` with the aim of constructing specific requests and decoding corresponding responses.

In summary, the provided code comprises `structures` and `classes` that enable interaction with the Encyclopedia of Life API. These components are crucial for making network requests, obtaining data related to biological objects, and decoding responses for further manipulation within the application. The implementation is designed to be efficient and scalable, facilitating the incorporation of new functionalities related to obtaining biological information.
