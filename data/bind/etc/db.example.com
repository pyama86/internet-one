;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	localhost. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

; ここから下を触るよ
@	IN	NS	localhost.
@	IN	A	8.8.8.8
pyama   IN      CNAME   @
www	IN      CNAME   pyama
