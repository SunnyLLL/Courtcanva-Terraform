aws_region = "ap-southeast-2"

name = "CCS-F"

env  = "UAT"

ecs_task_execution_role_name = "myEcsTaskExecutionRole"

az_count       ="2"

app_image      = "497551902879.dkr.ecr.ap-southeast-2.amazonaws.com/backend-dockerimage-repo:4-3c81680-2022-06-09-21-00"

app_port    = "8080"

app_count    = 1

health_check_path = "/api-docs"

fargate_cpu    = "1024"

fargate_memory="2048"

website_name = "uat.api.courtcanva.com"

ecrname="cc-backend-imagerepo"


  
