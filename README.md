# Private Events

A Ruby on Rails application that allows users to create and manage private events. Users can create events, invite others, and manage their event participation. Built with Rails 7.2 and styled with Tailwind CSS.

> I have not styled it, so it doesn't look great. But the intent was to make a functioning Rails app

## Features

- User authentication with Devise
- Create, edit, and delete events
- Join and leave events
- Filter events by:
  - Upcoming events
  - Past events
  - Events you're hosting
  - Events you're attending

## Prerequisites

- Ruby 3.x
- Rails 7.2.1
- PostgreSQL

## Installation

1. Clone the repository

```bash
git clone git@github.com:DasTapan/bronx-underground.git
cd bronx-underground
```

2. Install dependencies

```bash
bundle install
```

3. Setup database

```bash
rails db:create
rails db:seed
rails db:migrate
```

4. Start the server

```bash
rails s
```

The application will be available at `http://localhost:3000`

## Testing

The project uses Rails' built-in testing framework. Run the test suite with:

```bash
rails test
```

## Authors

- DasTapan
