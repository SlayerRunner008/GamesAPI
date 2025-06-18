# GamesApi

💧 A project built with the Vapor web framework.

## Getting Started

To build the project using the Swift Package Manager, run the following command in the terminal from the root of the project:
```bash
swift build
```

To run the project and start the server, use the following command:
```bash
swift run
```

To execute tests, use the following command:
```bash
swift test
```

### See more

- [Vapor Website](https://vapor.codes)
- [Vapor Documentation](https://docs.vapor.codes)
- [Vapor GitHub](https://github.com/vapor)
- [Vapor Community](https://github.com/vapor-community)
# GAMES-API
# GAMES-API

El tema de la API es una biblioteca de videojuegos, Los integrantes del equipo son Carlos Jasiel Morriso, Stella Isabel Casillas, Elena Isabel Espriella, y Mariano Jara Villasana. 

La URL de la API desplegada es la siguiente: 
https://sea-lion-app-g9xug.ondigitalocean.app/

Instrucciones:
Para probar los métodos post y get general, solo se tiene que añadir la ruta /games al final de la url, mientras que para los métodos get by id, put y delete, se utiliza /games/uuid. 

Para hacer un post de un juego debe tener el siguiente formato: 
{
    "title": "Dead Space",
    "image": "https://cdn1.epicgames.com/spt-assets/561519f67a624ff9b235797a5a67f6d4/dead-space-2008-vskzo.jpg",
    "description": "Isaac Clarke busca a su esposa a bordo de la Ishimura",
    "publisher": "EA"
}

Roles en el desarrollo de la API: 
Al inicio hay varios commits un poco reduntantes debido a que tuvimos problemas con los permisos para realizar commits, por lo que en realidad los commits valiosos son el primer commit, y después los demás que vienen comentados con la descripción de que hace cada uno. 

Mariano se encargó de realizar la parte de los endpoints y configuración del modelo, mientras que Stella se encargó de las configuraciones necesarias para docker, creación de la imagen, implementación de github actions y despliegue correcto de la API en digital ocean, probando todos los endpoints y su correcto funcionamiento. 

Morrison e Isa por otro lado, se encargaron de la parte del desarrollo front-end y en su archivo readme pondrán más a detalle los roles que cumplieron cada uno.