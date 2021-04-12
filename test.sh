#copy paste into terminal stuff 
CUBE='{
    "protocol":     "http",
    "port":         "8000",
    "address":      "%HOSTIP",
    "user":         "chris",
    "password":     "chris1234"
}'

ARGS="                              \
--plugininstances="4,9";                 \
--filter="\.dcm$,\.dcm$,\.dcm$"          \

"

#disregard this
chrispl-run --plugin name="pl-topologicalcopy"    \
            --args="$ARGS"                      \
            --onCUBE="$CUBE" \
            --jsonReturn

#use these ones
chrispl-search --for id,status,plugin_name          \
               --using plugin_name=topologicalcopy           \
               --across plugininstances             \
               --onCUBE '{
                    "protocol":     "http",
                    "port":         "8000",
                    "address":      "%HOSTIP",
                    "user":         "chris",
                    "password":     "chris1234"}'

schrispl-search --for fname                              \
               --using plugin_inst_id=231                 \
               --across files                           \
               --onCUBEaddress localhost                \
               --onCUBEport 8000
               
             
