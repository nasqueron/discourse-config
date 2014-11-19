#
# Generates the Discourse configuration files
#
# SSH_SERVER:
#     The remote host to query creditentials
#     It will be used by genconfig script like this: ssh <SSH_SERVER> <command>
#

SSH_SERVER="zr@ysul.nasqueron.drake"

all: discourse.conf

discourse.conf:
	@SSH_SERVER=${SSH_SERVER} ./genconfig discourse.conf.tmpl > discourse.conf

clean:
	@rm -f discourse.conf
