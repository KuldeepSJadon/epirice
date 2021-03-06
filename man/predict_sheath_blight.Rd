% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sheath_blight.R
\name{predict_sheath_blight}
\alias{predict_sheath_blight}
\title{Predict sheath blight area under the disease progress curve (AUDPC)}
\usage{
predict_sheath_blight(wth, emergence = "2000-05-15", ...)
}
\arguments{
\item{wth}{Weather data with a daily time-step, normally NASA-POWER, but any
data that has the following fields and proper data in them will work:
\describe{
\item{YYYYMMDD}{Date in YYYY-MM-DD format}
\item{DOY}{Numeric day of year, e.g. 1 - 365}
\item{T2M}{Mean daily temperature}
\item{T2MN}{Minimum daily temperature}
\item{T2MX}{Maximum daily temperature}
\item{RH2M}{Relative humidity}
\item{RAIN}{Precipitation}
}}

\item{emergence}{Expected date of crop emergence}

\item{...}{Additional arguments, see \code{\link{SEIR}}}
}
\value{
An \pkg{epirice} \code{SEIR} object
}
\description{
A dynamic mechanistic simulation of sheath blight disease of rice, causal
agent \emph{Thanatephorus cucumeris}.
The model is driven by daily weather data. Adapted from \pkg{cropsim} package
version 0.2.0-5 by Adam H. Sparks - USQ CCH.
Original model development: Serge Savary & Rene Pangga (IRRI).
Original R implementation by Robert J. Hijmans, Rene Pangga, & Jorrel Aunario
(IRRI).
}
\examples{
\donttest{
wth <-
sb <- predict_sheath_blight(wth, emergence = "2000-05-15")
plot(bb, type = 2)
}
}
\references{
Savary, S., Castilla, N.P., Willocquet, L. 2001. Analysis of the
spatio-temporal structure of rice sheath blight epidemics in a farmer's
field. Plant Pathology 50:53-68.

Savary, S., Willocquet, L., Teng, P.S., 1997. Modelling sheath
blight epidemics on rice tillers. Agricultural Systems 55:359-384.

Castilla, N.P., Leano, R.M., Elazegui, F.A., Teng, P.S., Savary,
S., 1996. Effects of plant contacts, inoculation pattern, leaf wetness
regime, and nitrogen supply on inoculum efficiency in rice sheath blight.
Journal of Phytopathology 144:187-192.

Sharma, N.R., Teng, P.S., Olivares, F.M., 1990. Effect of rice
growth stage on sheath blight (ShB) development and yield loss. International
Rice Research Newsletter 15:19-20.

Hashiba, T. and Ijiri, T., 1989. Estimation of yield loss and
computerized forecasting system (BLIGHTAS) for rice sheath blight disease.
International Symposium on Tropical Agricultural Research: Crop losses due to
disease outbreaks in the tropics and countermeasures. Tropical Agricultural
Research Series (Japan) No. 22 pp. 163-171.

Tu, C.C., Chang, Y.C., Wang, C.W., 1979. Studies on the ecology
of \emph{Rhizoctonia solani}, the causal organism of rice sheath blight.
National Science Council Monthly, ROC 7:1208-1219.

Gross, M.K., Santini, J.B., Tikhonova, I. and Latin, R. 1998. The
influence of temperature and leaf wetness duration on infection of perennial
ryegrass by \emph{Rhizoctonia solani}. Plant Disease 82:1012-1016.
}
\seealso{
\code{\link{predict_leaf_blast}},
\code{\link{predict_bacterial_blight}}, \code{\link{predict_brown_spot}},
\code{\link{predict_sheath_blight}}
}
\author{
Serge Savary, Ireneo Pangga, Robert Hijmans, Jorrel Khalil Aunario
}
