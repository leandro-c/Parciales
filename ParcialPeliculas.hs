module(crearCatalogo,agregarPelicula,generosCatalago,peliculaDe,mejoresN)where

import Set
import Map 
import Heap
import Pelicula

data Catalago = MKC(Map Genero [Pelicula])(Heap Pelicula)

crearCatalogo::Catalago --0(n)
crearCatalogo = MKC(emptyM)(emptyH)

agregarPelicula::Pelicula->Catalago->Catalago
agregarPelicula p MKC(m h) = MKC(adosarPelicula m p)(insertH h p)

adosarPelicula::Map Genero [Pelicula]->Pelicula->Map Genero [Pelicula]
adosarPelicula  m p = assocM p m

generosCatalago::Catalago->[Genero]
generosCatalago MKC(m _) = setToList(domM m) 

peliculaDe::Genero->Catalago->[Pelicula]
peliculaDe g MKC(m _) = peliculaDeGenero m

peliculaDeGenero::Map Genero [Pelicula]->[Pelicula]
peliculaDeGenero (Map g []) = []
peliculaDeGenero m@(Map g ps) = fromJust(lookUp g m)
mejoresN::Int->Catalago->[Pelicula]

--/*Usuario*/

--cantidadesDe::Catalago->[(Genero,Int)]

--ordenarPorPuntaje::Genero->Catalago->Heap Pelicula

--maxGeneroConPeliculas10::Catalago->Genero

--peliculasQueCominezanCon::String->Catalago->Heap Pelicula


