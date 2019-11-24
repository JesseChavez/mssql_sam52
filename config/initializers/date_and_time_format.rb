# set the default date format when the date is converted to
# string.

# NOTE: this is not recommended. it is better to use locales to get the
# string format for your country.
# This may affect jdbc drivers which they expect yyyy-[m]m-[d]d
Date::DATE_FORMATS.merge!(default: '%d/%m/%Y')
