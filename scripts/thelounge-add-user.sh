if [ -z "${1}" ]; then
    echo "Error: please specify username to add"
    exit 1
fi

docker exec -it thelounge s6-setuidgid abc thelounge add $1
