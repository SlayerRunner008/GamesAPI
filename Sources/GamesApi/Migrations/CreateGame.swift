import Fluent



struct CreateGame: AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("game")
            .id()
            .field("title", .string, .required)
            .field("image", .custom("VARCHAR(1000)"), .required)
            .field("description", .string, .required)
            .field("publisher", .string, .required)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("game").delete()
    }
}