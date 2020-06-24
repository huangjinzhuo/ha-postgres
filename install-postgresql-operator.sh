#### Install PostgreSQL Operator via GCP Markeplace

# Follow instruction to install Crunchy PostgreSQL for GKE here:
# https://console.cloud.google.com/marketplace/details/crunchydata/crunchy-postgresql-operator

# CRDs:
# pgclusters.crunchydata.com
# pgreplicas.crunchydata.com
# pgpolicies.crunchydata.com
# pgtasks.crunchydata.com

# Pods: operator, apiserver, scheuduler, event
#

# Create a high-availability PostgreSQL cluster that has a single replica, 
# supports having backups in both a local storage area and GCP Cloud Storage
# (or Amazon S3) and has built-in metrics and connection pooling
pgo create cluster hacluster --replica-count=1 --metrics \
--pgbackrest-storage-type="local,s3" --pgbouncer --pgbadger

