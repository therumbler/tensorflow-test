build:
	docker build -t ${USER}/tensorflow-test .

run:
	docker run ${USER}/tensorflow-test