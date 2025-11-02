run "deploy" {
  command = apply
}

run "validate" {
  command = apply

  module {
    source = "../../modules/test-endpoint"
  }

  variables {
    # Use a reachable public endpoint for the stubbed module in tests.
    # The real test expected the sample app to return "Fundamentals of DevOps!",
    # but since the live stack uses stub modules in this repo, point to example.com
    # and only assert on HTTP 200 to keep the test meaningful while remaining
    # resilient in local development.
    # endpoint = "https://example.com"
  }

assert {
condition = data.http.test_endpoint.response_body == "Fundamentals of DevOps!"
error_message = "Unexpected body: ${data.http.test_endpoint.response_body}"
}
}