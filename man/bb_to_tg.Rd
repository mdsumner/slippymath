% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slippymath.R
\name{bb_to_tg}
\alias{bb_to_tg}
\title{bb_to_tg}
\usage{
bb_to_tg(bbox, zoom = NULL, max_tiles = NULL)
}
\arguments{
\item{bbox}{the bounding box to fit onto a grid of tiles. Must be either a
'bbox' object created with sf::st_bbox or a vector of length 4 with names:
'xmin', 'xmax', 'ymin', 'ymax'.}

\item{zoom}{Optional. The desired zoom level.}

\item{max_tiles}{Optional. The maximum number of tiles the grid may occupy.}
}
\value{
a 'tile_grid' object containing 'tiles' and 'zoom'
}
\description{
Bounding box to tile grid
}
\details{
Calculate a slippy map tile grid that will fit a supplied bounding box.

The grid is returned as part of a tile_grid object that contains a
data.frame of x,y tile numbers and zoom level.

The tile grid can be calculated for a given zoom level or for the deepest
zoom that ensures the number of tiles is less than or equal to `max_tiles`.

If `zoom` and `max_tiles` are supplied together, then the max is still
enforced and the function will fail if more tiles are required for the given
zoom.
}
