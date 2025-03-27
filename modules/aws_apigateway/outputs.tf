output "api_gateway_url" {
  value = "${aws_api_gateway_deployment.api_gateway_deployment.invoke_url}${aws_api_gateway_stage.api_gateway_stage.stage_name}"
}
