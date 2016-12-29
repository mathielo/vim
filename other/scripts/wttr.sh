# Weather Forecast
# https://github.com/chubin/wttr.in

uri="wttr.in"

city=$1
if [ -n "$city" ]; then
  uri="$uri/\"$city\""
fi

curl $uri
