$TTL 3600   ; 1 Hour
@   IN  SOA ns1.bad.com.   hostmaster.bad.com. (
        2015083100  ; Serial number
        3600        ; Refresh
        1800        ; Retry
        604800      ; Expire
        3600        ;  Min TTL
)

        IN  NS  ns1.bad.com.
        IN  NS  ns2.bad.com.
        IN  MX  10  mail.bad.com.
        IN  A   10.0.0.1

$ORIGIN bad.com.

cat         IN      A       10.0.0.2
hat         IN      A       10.0.0.3 foobar      IN      A       10.0.0.4
ns2         IN      A       10.0.0.6
mail        IN      A       10.0.0.7

shrimpboat  IN      CNAME   cat.bad.com.
