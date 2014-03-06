name            "intu-aws-cfn-bootstrap"
maintainer      "Intuit, Inc."
homepage        "http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html"

build_version   ENV['version']
build_iteration ENV['iteration']

install_path    "/opt/aws/intu-aws-cfn-bootstrap"

dependency      "preparation"
dependency      "intu-aws-cfn-bootstrap"

exclude         "\.git*"
exclude         "bundler\/git"
