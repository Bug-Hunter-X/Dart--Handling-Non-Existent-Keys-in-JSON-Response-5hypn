# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that does not exist in the JSON data. The `bug.dart` file shows the erroneous code, while `bugSolution.dart` provides a corrected version.

The original code attempts to access the key 'nonExistentKey' which may not always be present in the JSON response from the API.  This can lead to runtime exceptions.

The solution involves checking for the existence of the key before attempting to access its value, using methods like `containsKey()` or null-aware operators.