import Fluent
import Vapor

func routes(_ app: Application) throws {
app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }


    app.get("games"){
        req async throws -> [Game] in
        let games = try await Game.query(on: req.db).all() 
        return games
    }

    app.post("games"){ req async throws -> Game in 
         let game = try req.content.decode(Game.self)
         try await game.save(on: req.db)
         return game
    }

    
    try app.register(collection: TodoController())
}
