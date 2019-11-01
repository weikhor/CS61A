# CS 61A: Structure and Interpretation of Computer Programs Fall 2018 Projects

### Project 1: The Game of Hog 
In this project, a simulator is developed and multiple strategies for the dice game Hog. 
The control statements and higher-order functions together are used.

In Hog, two players alternate turns trying to be the first to end a turn with at least 100 total points. 
On each turn, the current player chooses some number of dice to roll, up to 10. That player's score for the turn is 
the sum of the dice outcomes.

### Project 2: Yelp Maps


In this project, you will create a visualization of restaurant ratings using machine learning and the 
Yelp academic dataset. In this visualization, Berkeley is segmented into regions, where each region is shaded 
by the predicted rating of the closest restaurant (yellow is 5 stars, blue is 1 star). Specifically, the visualization 
you will be constructing is a Voronoi diagram.

In the map above, each dot represents a restaurant. The color of the dot is determined by the restaurant's location. 
For example, downtown restaurants are colored green. The user that generated this map has a strong preference for Southside 
restaurants, and so the southern regions are colored yellow.


### 3. Local Search Optimization

In this exercise, you'll implement several local search algorithms and test them on the [Traveling Salesman Problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem) (TSP) between a few dozen US state capitals.


## Projects

### 1. Sudoku Solver
In this project, you will extend the Sudoku-solving agent developed in the classroom lectures to solve diagonal Sudoku puzzles and implement a new constraint strategy called "naked twins". A diagonal Sudoku puzzle is identical to traditional Sudoku puzzles with the added constraint that the boxes on the two main diagonals of the board must also contain the digits 1-9 in each cell (just like the rows, columns, and 3x3 blocks).

Read more [here](/Projects/1_Sudoku)


### 2. Classical Planning
This project is split between implementation and analysis. First you will combine symbolic logic and classical search to implement an agent that performs progression search to solve planning problems. Then you will experiment with different search algorithms and heuristics, and use the results to answer questions about designing planning systems.

Read more [here](/Projects/2_Classical%20Planning)


### 3. Game Playing
In this project you will choose an experiment with adversarial game-playing techniques like minimax, Monte Carlo tree search, opening books, and more. Your goal will be to build and evaluate the performance of your agent in a finite deterministic two player game of perfect information called Isolation.

Read more [here](/Projects/3_Adversarial%20Search)


### 4. Part of Speech Tagger

In this notebook, you'll use the Pomegranate library to build a hidden Markov model for part of speech tagging with a universal tagset. Hidden Markov models have been able to achieve >96% tag accuracy with larger tagsets on realistic text corpora. Hidden Markov models have also been used for speech recognition and speech generation, machine translation, gene recognition for bioinformatics, and human gesture recognition for computer vision, and more.

Read more [here](/Projects/4_HMM%20Tagger)
