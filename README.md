


```
$ python3 -m venv .venv
```

After the init process completes and the virtualenv is created, you can use the following
step to activate your virtualenv.

```
$ source .venv/bin/activate
```

If you are a Windows platform, you would activate the virtualenv like this:

```
% .venv\Scripts\activate.bat
```

Once the virtualenv is activated, you can install the required dependencies.

```
$ pip install -r requirements.txt
```

At this point you can now synthesize the CloudFormation template for this code.

```
$ cdk synth
```

To add additional dependencies, for example other CDK libraries, just add
them to your `setup.py` file and rerun the `pip install -r requirements.txt`
command.

## Useful commands

 * `cdk ls`          list all stacks in the app
 * `cdk synth`       emits the synthesized CloudFormation template
 * `cdk deploy`      deploy this stack to your default AWS account/region
 * `cdk diff`        compare deployed stack with current state
 * `cdk docs`        open CDK documentation




## Customize Jenkins image
User the following command/Dockerfile to customize 

`docker build -t jenkins:custom .`

```
# Build image
FROM jenkins/jenkins:lts

USER root

RUN apt update && \
    curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt install nodejs -y && \
    npm install -g aws-cdk

USER jenkins
```

Run Docker container using customized image
```
docker run -d -ti --name jenkins-local -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock jenkins:custom
```

Install "Cloudbees AWS Credentials" Plugin