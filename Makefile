SSH_SERVER="zr@ysul.nasqueron.drake"

all: discourse.conf

discourse.conf:
	SSH_SERVER=${SSH_SERVER} ./genconfig discourse.conf.tmpl > discourse.conf

clean:
	@rm -f discourse.conf
