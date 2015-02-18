library('RUnit')

test.suite <- defineTestSuite("all", dirs=file.path("test"), testFileRegexp = ".*_test\\.R$")
test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)
