application         = "quicksight"
service             = "athena_context"
environment         = "prod"
is_production       = true

bucket_name         = "alight-fin-ops-join-context-files-tf"
suspend_versioning  = true

bucket_name_2       = "alight-fin-ops-analyses-backups-tf"
service_2           = "analyses_backups"
suspend_versioning_2 = false

s3_retention_rules = [
  {
    id     = "rule_one"
    prefix = "rule_one"
    days   = 7
  }
]

tags = {
  DataClassification = "InternalUse"
  BusinessServiceName = "Governance FinOps Prod"
}