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

    app.get("games",":id"){
        req async throws -> Game in 
        guard let game = try await Game.find(req.parameters.get("id"),on:req.db) else {
           throw Abort(.notFound,reason:"El registro no fue encontrado")
        }
        return game
    }

    app.post("games"){ req async throws -> Game in 
         let game = try req.content.decode(Game.self)
         try await game.save(on: req.db)
         return game
    }

    app.put("games",":id"){
        req async throws -> Game in 
        guard let ExistingGame = try await Game.find(req.parameters.get("id"),on:req.db) else {
           throw Abort(.notFound,reason:"El registro no fue encontrado")
        }

        let updatedGame = try req.content.decode(Game.self)

        ExistingGame.title = updatedGame.title
        ExistingGame.image = updatedGame.image
        ExistingGame.description = updatedGame.description
        ExistingGame.publisher = updatedGame.publisher

        try await ExistingGame.update(on:req.db)
        return ExistingGame
    }

    app.delete("games",":id"){
        req async throws -> HTTPStatus in
        guard let existingGame = try await Game.find(req.parameters.get("id"),on:req.db) else {
           throw Abort(.notFound,reason:"El registro no fue encontrado")
        }
        try await existingGame.delete(on:req.db)
        return .noContent
    }

    
    try app.register(collection: TodoController())
}
