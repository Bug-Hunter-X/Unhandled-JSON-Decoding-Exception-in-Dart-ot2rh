# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart: insufficient error handling during JSON decoding. The original code lacks specific handling for `FormatException` that may occur during `jsonDecode`. This can lead to cryptic error messages and makes debugging more challenging.

The solution introduces more robust error handling, providing more informative error messages and allowing for better debugging and recovery.
