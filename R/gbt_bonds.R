
#' Description of variables in `gbt_bonds` dataset.
#'
#' A data dictionary for the `gbt_bonds`
#'
#' @format A tibble with 177 rows and 17 variables:
#' \describe{
#'   \item{link}{Unique link to the bond data in the Green Bond Transparency Platform website.}
#'   \item{handle}{Unique code of the bond registrered in the Green Bond Transparency Platform showed in the bond link.}
#'   \item{ISIN}{International Securities Identification Number (ISIN) uniquely identifies a security.}
#'   \item{CUSIP}{A CUSIP number is a unique identification number assigned to stocks and registered bonds in the United States and Canada.}
#'   \item{FIGI}{The FIGI code a is global identification based on Bloomberg’s Open Symbology.}
#'   \item{ticker}{A stock symbol is an arrangement of characters—usually letters—representing publicly-traded securities on an exchange}
#'   \item{name}{Name of the bond in the platform created by the issuer.}
#'   \item{issuer_name}{Name of the issuer reporting for the use of proceeds and KPIs of the bond}
#'   \item{issuer_type}{Type of issuer from the categories: Development bank, Financial corporate, Non-financial corporate, Local Government, Sovereign.}
#'   \item{issuer_jurisdiction}{Country of the SPV issuer reporting.}
#'   \item{fund}{Indicates if one of the entries has a "fund-structure". "f" means that the entry does not have a fund strucuture and is not used as a base for a group of bonds reporting allocations and KPIs at the program level. "t" means that the entry has a fund-structure.}
#'   \item{issuance_date}{mm/dd/yyyy when the bond was issued.}
#'   \item{maturity_date}{mm/dd/yyyy when the bond matures. Moment in time when the principal of a bond must be repaid to an investor.}
#'   \item{volume_usd}{USD equivalent of the face value issued.}
#'   \item{volume_bond_currency}{Amount issued in denominated currency.}
#'   \item{bond_currency}{The denominated currency of the bond.}
#'
#' }
#' @source \url{https://gbtp-logs.s3.amazonaws.com/dumps/bonds.csv}

"gbt_bonds"
