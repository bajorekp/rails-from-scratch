# Rails from Scratch

Build a Rails application step by step, starting from TCP server up to Rails app.

This repository gives you an inside of how Rails works underneath. How TCP, HTTP and Rack are used there and how we went from there to the framework application.

## Step done

- [x] Init ruby script
- [x] TCP server
- [x] HTTP server
- [x] Rack server
  - [x] Puma server
- [x] Rails API app

## Profits

What you can learn from this repo?
* How from very siple TCP server can be transition to simple HTTP server
* How simple HTTP is translated to Rack app and Rails app

In order to connect:
* to TCP connection you can use netcat: `netcat -c localhost 4242`
* to HTTP connection you can use curl: `curl -v http://localhost:4242/hi`

You can use the following tags to navigate easily:
* [tag/step-0](https://github.com/bajorekp/rails-from-scratch/releases/tag/step-0)
* [tag/step-1](https://github.com/bajorekp/rails-from-scratch/releases/tag/step-1)
* [tag/step-2](https://github.com/bajorekp/rails-from-scratch/releases/tag/step-2)
* [tag/step-3](https://github.com/bajorekp/rails-from-scratch/releases/tag/step-3)
* [tag/step-4](https://github.com/bajorekp/rails-from-scratch/releases/tag/step-4)
* [tag/step-5](https://github.com/bajorekp/rails-from-scratch/releases/tag/step-5)

## What can you do more?

* In HTTP server - separate request and connection handling, just like Rack does
* Locate method source where Rails returns Rack response array `[status_code, headers, response_body]` - call method
* Extend the Rails app with view, and database models

## Requirements

* Ruby 2.3+ (`apt install ruby-dev` / `brew install ruby`)
* Pry (`gem install pry`)
* Puma and rack (`gem install puma`)
* Rails 7 (`gem install rails`)
