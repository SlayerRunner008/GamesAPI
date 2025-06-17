import Fluent
import Vapor
import Foundation

final class Game : Model, @unchecked Sendable, Content{
    static let schema = "game"

    @ID(key: .id)
    var id: UUID?
    @Field(key:"title")
    var title: String
    @Field(key:"image")
    var image: String 
    @Field(key:"description")
    var description : String 
    @Field(key:"publisher")
    var publisher: String

    init(){}

    init(id: UUID? = nil, title: String, image: String, description:String,publisher:String){
        self.id = id
        self.title = title 
        self.image = image
        self.description = description
        self.publisher = publisher
    }

}