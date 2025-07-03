as_date_or_null <- function(x, label = "datum") {
  if (is.null(x) || identical(x, "")) return(NULL)
  date_try <- try(as.Date(x, format = "%d-%m-%Y"), silent = TRUE)
  if (inherits(date_try, "try-error") || is.na(date_try)) {
    stop(sprintf("Argument '%s' není platné datum. Použij formát 'DD-MM-YYYY'.", label))
  }
  return(date_try)
}