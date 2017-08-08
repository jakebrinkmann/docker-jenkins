
[Jenkins](https://jenkins.io/) allows for scheduling jobs to execute a sequence of events, such as nightly-builds of a project, for automated unit/integration/regression testing. 

## Building and Running

Download Jenkins: 
```bash
docker build -t my-jenkins .
```

Run the Java Servlet: 
```bash
docker run -it --rm --name=some-jenkins -p 127.0.0.1:8080:8080 my-jenkins
```

Will report `"Jenkins initial setup is required"`, use the generated password,
to log in here:

* [Install suggested Plugins](http://localhost:8080/) (skip creating admin accounts)
* [Create a new Pipeline job](http://localhost:8080/newJob)

## Links

* [Getting Started with Jenkins](https://jenkins.io/doc/book/getting-started/)

