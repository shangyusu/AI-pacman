#!/bin/sh
python pacman.py -l tinyMaze -p SearchAgent --frameTime 0
python pacman.py -l mediumMaze -p SearchAgent --frameTime 0
python pacman.py -l bigMaze -z .5 -p SearchAgent --frameTime 0
python pacman.py -l mediumMaze -p SearchAgent -a fn=bfs --frameTime 0
python pacman.py -l bigMaze -p SearchAgent -a fn=bfs -z .5 --frameTime 0
python eightpuzzle.py --frameTime 0
python pacman.py -l mediumMaze -p SearchAgent -a fn=ucs --frameTime 0
python pacman.py -l mediumDottedMaze -p StayEastSearchAgent --frameTime 0
python pacman.py -l mediumScaryMaze -p StayWestSearchAgent --frameTime 0
python pacman.py -l bigMaze -z .5 -p SearchAgent -a 
fn=astar,heuristic=manhattanHeuristic --frameTime 0 
python pacman.py -l tinyCorners -p SearchAgent -a fn=bfs,prob=CornersProblem --frameTime 0
python pacman.py -l mediumCorners -p SearchAgent -a fn=bfs,prob=CornersProblem --frameTime 0
python pacman.py -l mediumCorners -p AStarCornersAgent -z 0.5 --frameTime 0
