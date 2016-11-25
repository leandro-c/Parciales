crearCatalogo::Pelicula->Catalago->Catalago

agregarPelicula::Pelicula->Catalago->Catalago

generosCatalago::Catalago->[Genero]


peliculaDe::Genero->[Pelicula]

mejoresN::Int->Catalago->[Pelicula]

/*Usuario*/

cantidadesDe::Catalago->[(Genero,Int)]

ordenarPorPuntaje::Genero->Catalago->Heap Pelicula

maxGeneroConPeliculas10::Catalago->Genero

peliculasQueCominezanCon::String->Catalago->Heap Pelicula


