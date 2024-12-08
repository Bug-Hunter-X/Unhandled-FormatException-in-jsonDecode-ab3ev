# Unhandled FormatException in Dart's jsonDecode

This repository demonstrates a common error in Dart applications where a `FormatException` during JSON decoding is not handled properly, leading to application crashes.

The `bug.dart` file contains code that attempts to decode a JSON response from an API.  If the JSON response is malformed, `jsonDecode` throws a `FormatException`, which is not caught. 

The `bugSolution.dart` file shows how to correctly handle the `FormatException` using a `try-catch` block.  This prevents the application from crashing and allows for graceful error handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  Observe that the app crashes if the API returns malformed JSON.
3. Run `bugSolution.dart`. Observe how the exception is handled gracefully.