import UIKit

import Foundation



enum Piece {
    case knight
    case rook // a rook can move an arbitrary number of spaces on one axis (horizontal/vertical).
}

// Write a function that takes as input a piece and position that returns a list of all possible places it can end up in one move
struct Location: Hashable {
    var x: Int
    var y: Int
    
    var hashValue: Int {
        return x.hashValue &+ y.hashValue
    }
    
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

func possibleKnightPosition(pieceLocation: Location) -> Set<Location>? {
    let knightMoves: Set<Location> = [
        Location(x: pieceLocation.x + 1, y: pieceLocation.y + 2),
        Location(x: pieceLocation.x - 1, y: pieceLocation.y + 2),
        Location(x: pieceLocation.x + 1, y: pieceLocation.y - 2),
        Location(x: pieceLocation.x - 1, y: pieceLocation.y - 2),
        Location(x: pieceLocation.x + 2, y: pieceLocation.y + 1),
        Location(x: pieceLocation.x + 2, y: pieceLocation.y - 1),
        Location(x: pieceLocation.x - 2, y: pieceLocation.y + 1),
        Location(x: pieceLocation.x - 2, y: pieceLocation.y - 1)
    ]
    
    for move in knightMoves {
        if (move.x >= 1 && move.x <= 7) || (move.y >= 1 && move.y <= 7) {
            return knightMoves
        } else {
            return nil
        }
    }
    return knightMoves
}

func possibleRookPosition(pieceLocation: Location) -> Set<Location>? {
    let rookMoves: Set<Location> = [
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 1),
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 2),
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 3),
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 4),
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 5),
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 6),
        Location(x: pieceLocation.x + 0, y: pieceLocation.y + 7),
        Location(x: pieceLocation.x + 1, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x + 2, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x + 3, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x + 4, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x + 5, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x + 6, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x + 7, y: pieceLocation.y + 0),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 1),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 2),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 3),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 4),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 5),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 6),
        Location(x: pieceLocation.x - 0, y: pieceLocation.y - 7),
        Location(x: pieceLocation.x - 1, y: pieceLocation.y - 0),
        Location(x: pieceLocation.x - 2, y: pieceLocation.y - 0),
        Location(x: pieceLocation.x - 3, y: pieceLocation.y - 0),
        Location(x: pieceLocation.x - 4, y: pieceLocation.y - 0),
        Location(x: pieceLocation.x - 5, y: pieceLocation.y - 0),
        Location(x: pieceLocation.x - 6, y: pieceLocation.y - 0),
        Location(x: pieceLocation.x - 7, y: pieceLocation.y - 0)
    ]
    
    for move in rookMoves {
        if (move.x > 1 && move.x < 7) || (move.y > 1 && move.y < 7) || (move.x < -1 && move.x > -7) || (move.y < -1 && move.y > -7) {
            return rookMoves
        } else {
            return nil
        }
    }
    return rookMoves
}

print(possibleKnightPosition(pieceLocation: Location(x: 0, y: 0))!)
print(possibleRookPosition(pieceLocation: Location(x: 0, y: 0))!)
