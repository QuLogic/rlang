% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hash.R
\name{hash}
\alias{hash}
\title{Hash an object}
\usage{
hash(x)
}
\arguments{
\item{x}{An object.}
}
\description{
\code{hash()} hashes an arbitrary R object.

The generated hash is guaranteed to be reproducible across platforms, but
not across R versions.
}
\details{
\code{hash()} uses the XXH128 hash algorithm of the xxHash library, which
generates a 128-bit hash. It is implemented as a streaming hash, which
generates the hash with minimal extra memory usage.

Objects are converted to binary using R's native serialization tools.
On R >= 3.5.0, serialization version 3 is used, otherwise version 2 is used.
See \code{\link[=serialize]{serialize()}} for more information about the serialization version.
}
\examples{
hash(c(1, 2, 3))
hash(mtcars)
}
