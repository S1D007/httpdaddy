# httpdaddy

A high-performance, multi-threaded HTTP 1.1 server written in Nim.
> :information_source: Unless you're developing something with specific resource constraints or creating your own web framework, consider using [Jester](https://github.com/dom96/jester) (which is built on httpdaddy) or another web framework.

> :information_source: This HTTP server is designed to utilize epoll-like OS APIs and does not support Windows by design.

> :warning: This library is not yet hardened against common HTTP security exploits. If you use it in production, do so behind a reverse proxy like nginx.

## Features

Current features include:

* Built on the Nim `selectors` module, making efficient use of epoll on Linux and kqueue on macOS.
* Automatic parallelization; compile with `--threads:on` to enable.
* Support for HTTP pipelining.
* On-demand parsing to handle only the requested data.
* Integration with Nim's `asyncdispatch`, allowing async/await in request callbacks.

## Getting started

Create a `helloHttp.nimble` file:

```nim
# Package

version       = "0.1.0"
author        = "Siddhant Singh"
description   = "A basic HTTP server using the httpdaddy library."
license       = "MIT"
srcDir        = "src"
bin           = @["helloHttp"]

# Dependencies

requires "nim >= 1.0.0"
requires "httpdaddy >= 0.4.0"
