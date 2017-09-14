FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogYWNtZS1jb250cm9sbGVyLWFwYgppbWFnZTogbG9yYnVzY29kZS9hY21lLWNvbnRyb2xs\
ZXItYXBiCmRlc2NyaXB0aW9uOiBUaGlzIEFQQiBkZXBsb3lzIE9wZW5zaGlmdCBBQ01FIENvbnRy\
b2xsZXIKYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5\
TmFtZTogYWNtZS1jb250cm9sbGVyCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3Jp\
cHRpb246IFRoaXMgZGVmYXVsdCBwbGFuIGRlcGxveXMgYWNtZS1jb250cm9sbGVyLWFwYgogICAg\
ZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAgICBwYXJhbWV0ZXJzOgogICAgLSBkZXNjcmlw\
dGlvbjogQUNNRSBFbmRwb2ludCBVUkwKICAgICAgbmFtZTogT1BFTlNISUZUX0FDTUVfQUNNRVVS\
TAogICAgICB2YWx1ZTogaHR0cHM6Ly9hY21lLXN0YWdpbmcuYXBpLmxldHNlbmNyeXB0Lm9yZy9k\
aXJlY3RvcnkKICAgIC0gZGVzY3JpcHRpb246IENvbnRyb2xsZXIgbG9nbGV2ZWwKICAgICAgbmFt\
ZTogT1BFTlNISUZUX0FDTUVfTE9HTEVWRUwKICAgICAgdmFsdWU6ICI4IgogICAgLSBkZXNjcmlw\
dGlvbjogTmFtZSBvZiB0aGUgc2VydmljZSBwb2ludGluZyB0byBBQ01FIGNvbnRyb2xsZXIKICAg\
ICAgbmFtZTogT1BFTlNISUZUX0FDTUVfU0VMRlNFUlZJQ0VOQU1FCiAgICAgIHZhbHVlOiBhY21l\
LWNvbnRyb2xsZXIKICAgIC0gZGVzY3JpcHRpb246IE5hbWVzcGFjZSBvZiB0aGUgc2VydmljZSBw\
b2ludGluZyB0byBhIHBvZCB3aXRoIHRoaXMgcHJvZ3JhbS4gRGVmYXVsdHMgdG8gY3VycmVudCBv\
ciBkZWZhdWx0IG5hbWVzcGFjZQogICAgICBuYW1lOiBPUEVOU0hJRlRfQUNNRV9TRUxGU0VSVklD\
RU5BTUVTUEFDRQogICAgLSBkZXNjcmlwdGlvbjogUmVzdHJpY3RzIGNvbnRyb2xsZXIgdG8gbmFt\
ZXNwYWNlLiBJZiBub3Qgc3BlY2lmaWVkIGNvbnRyb2xsZXIgd2F0Y2hlcyBmb3Igcm91dGVzIGFj\
Y3Jvc3MgbmFtZXNwYWNlcy4KICAgICAgbmFtZTogT1BFTlNISUZUX0FDTUVfV0FUQ0hfTkFNRVNQ\
QUNFCiAgICAtIGRlc2NyaXB0aW9uOiBEb2NrZXIgSW1hZ2Ugb2YgQUNNRSBjb250cm9sbGVyCiAg\
ICAgIG5hbWU6IERPQ0tFUl9JTUFHRQogICAgICB2YWx1ZTogZG9ja2VyLmlvL2FwcHVpby9vcGVu\
c2hpZnQtYWNtZQogICAgLSBkZXNjcmlwdGlvbjogRG9ja2VyIEltYWdlIFRhZyBvZiBBQ01FIGNv\
bnRyb2xsZXIKICAgICAgbmFtZTogRE9DS0VSX0lNQUdFX1RBRwogICAgICB2YWx1ZTogbGF0ZXN0\
Cg=="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
