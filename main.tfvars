application         = "quicksight"
service             = "athena_context"
environment         = "prod"
is_production       = true

bucket_name         = "alight-fin-ops-join-context-files-tf"
suspend_versioning  = true

bucket_name_2       = "alight-fin-ops-analyses-backups-tf"
service_2           = "analyses_backups"
suspend_versioning_2 = false

tags = {
  DataClassification = "InternalUse"
  BusinessServiceName = "Governance FinOps Prod"
}