$TTL 3600   ; 1 Hour
@   IN  SOA ns1.test.com.   hostmaster.test.com. (
        2015083100  ; Serial number
        3600        ; Refresh
        1800        ; Retry
        604800      ; Expire
        3600        ;  Min TTL
)

        IN  NS  ns1.test.com.
        IN  NS  ns2.test.com.
        IN  MX  10  mail.test.com.
        IN  A   10.0.0.1

$ORIGIN test.com.

cat         IN      A       10.0.0.2
hat         IN      A       10.0.0.3
foobar      IN      A       10.0.0.4
ns1         IN      A       10.0.0.5
ns2         IN      A       10.0.0.6
mail        IN      A       10.0.0.7

shrimpboat  IN      CNAME   cat.test.com.
