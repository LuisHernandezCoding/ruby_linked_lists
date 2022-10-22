# ruby linked lists

A simple linked list implementation in Ruby.
The goal of this project is to create a linked list using the Ruby programming language.

###### Definition

> 'A linked list is a linear collection of data elements, in which linear order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a group of nodes which together represent a sequence. Under the simplest form, each node is composed of data and a reference (in other words, a link) to the next node in the sequence; more complex variants add additional links. This structure allows for efficient insertion or removal of elements from any position in the sequence during iteration. More complex variants add additional links, allowing more efficient insertion or removal of nodes at arbitrary positions. A drawback of linked lists is that access time is linear (and difficult to pipeline). Faster access, such as random access, is not feasible. Arrays have better cache locality as compared to linked lists.' [Wikipedia](https://en.wikipedia.org/wiki/Linked_list)

###### Why Linked Lists?

Linked lists are a good data structure to use when you need to insert or delete items at the beginning of the list. This is because you can simply change the head of the list to point to the new node. However, if you need to insert or delete items from the middle or end of the list, you will need to traverse the entire list to find the node you are looking for.

## Built With

- Ruby v 3.1.2p20

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby v 3.1.2p20

### Setup

- Make sure you have Ruby installed on your machine
- Clone this repository with
```bash
git clone git@github.com:LuisHernandezCoding/Hangman_Ruby.git
```

### Usage

- Run the program on your local machine with 

```bash
ruby bin/main.rb
```

## Author

👤 **Luis Hernandez**

- GitHub: [@LuisHernandezCoding]

## Credits

- Project made mainly for 
[The Odin Project](https://www.theodinproject.com)
[(Full stack ruby on rails)](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby)
[Ruby Hangman](https://www.theodinproject.com/lessons/ruby-hangman)