# Cucumber Ruby Sample

A sample BDD framework using Cucumber and Ruby

## Installation

1. Prepare your Ruby environment, it is recommended to use [RVM](https://rvm.io/)
```bash
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.bash_profile
```

2. Open the project and install its dependecies
```bash
cd cucumber-ruby-sample
gem install bundler
bundle install
```

3. You are ready to go...

## Profiles

| Profile | Command           |
|---------|-------------------|
| **API** | `cucumber -p api` |

## Folder Structure

```
├── config                    -- profile configuration folder
│   ├── profiles              -- each profile folders
│   └── cucumber.yml          -- profile configuration
│
├── features
│   ├── object_abstractions   -- object abstraction (e.g. page object) folder for each profile
│   │   └── profiles
│   ├── scenarios             -- Cucumber scenarios folder
│   │   └── profiles
│   ├── step_definitions      -- Cucumber step definitions folder
│   │   └── profiles
│   └── support               -- Cucumber configuration folder
│       └── env.rb
```
