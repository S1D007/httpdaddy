# Package

version       = "0.0.1"
author        = "Siddhant Singh"
description   = "A high-performance HTTP server using epoll and parallel processing."
license       = "MIT"

srcDir = "src"

# Dependencies

requires "nim >= 0.18.0"

# Test dependencies
requires "asynctools#0e6bdc3ed5bae8c7cc9"

task helloworld, "Compiles and executes the hello world server.":
  exec "nim c -d:release --gc:boehm -r tests/helloworld"

task dispatcher, "Compiles and executes the dispatcher test server.":
  exec "nim c -d:release --gc:boehm -r tests/dispatcher"

task test, "Runs the test suite.":
  exec "nimble c -y -r tests/tester"