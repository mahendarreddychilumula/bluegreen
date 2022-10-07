# jsonencode([{
#     name        = "${var.name}-container-${var.environment}"
#     image       = "${var.container_image}"
#     essential   = true
#     environment = "test"
#     portMappings = [{
#       protocol      = "tcp"
#       containerPort = var.container_port
#       hostPort      = var.container_port
#     }
#     ]
#     # environment=[
#     #   {
#     #     "name":"DATABASE",
#     #     "value": var.environment
#     #   },
#     #   {
#     #     "name":"DATABASE_URL",
#     #     "value": data.aws_ssm_parameter.parameter_name.value
#     #   }
#     # ]
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = aws_cloudwatch_log_group.main.name
#         awslogs-stream-prefix = "ecs"
#         awslogs-region        = var.region
#       }
#     }
#     #secrets = var.container_secrets
#   }])