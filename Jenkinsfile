pipeline {
    agent any
//     environment {
//         REPOSITORY_NAME = "devops-demo"
//         REPOSITORY_URI = "746590608925.dkr.ecr.ap-southeast-2.amazonaws.com/${REPOSITORY_NAME}"
//     }
     stages {


//         // Step to Test aws credentials stored in jenkins
//         stage('test AWS credentials') {
//             steps {
//                 withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
//                     sh '''
//                         aws sts get-caller-identity
//                     '''
//                 }
//             }
//         }


        // Install Requirements
        stage('install requirements') {
            steps {
                withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
                    sh '''
                        pip3 install -r requirements.txt
                    '''
                }
            }
        }



//         stage('bootstrap-account') {
//             steps {
//                 withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
//                     sh '''
//                         cdk bootstrap aws://746590608925/ap-southeast-2
//                     '''
//                 }
//             }
//         }


//         stage('bootstrap-account') {
//             steps {
//                 withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
//                     sh '''
//                         curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
//                         nvm install --lts
//                         npm install -g aws-cdk
//                     '''
//                 }
//             }
//         }


        stage('install-cdk') {
            steps {
                withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
                    sh '''
                        aws sts get-caller-identity
                        cdk --version
                        cdk ls
                    '''
                }
            }
        }



//         stage('bootstrap-account') {
//             steps {
//                 withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
//                     sh '''
//                         GIT_BUILD=$(git describe --all --long | tr "-" " " | awk '{ print $3 }')
//                         cd app/nodejs/
//                         docker build -t ${REPOSITORY_URI}:${GIT_BUILD} .
//                         aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin ${REPOSITORY_URI}
//                         docker push ${REPOSITORY_URI}:${GIT_BUILD}
//                     '''
//                 }
//             }
//         }




//         stage('deploy-ecs-cluster') {
//             steps {
//                 withAWS(credentials: 'aws-sandbox', region: 'ap-southeast-2') {
//                     sh '''
//                     GIT_BUILD=$(git describe --all --long | tr "-" " " | awk '{ print $3 }')
//                     aws cloudformation deploy --stack-name demo-ecs-stack \
//                     --template-file cfn/ecs.yaml \
//                     --region ap-southeast-2 \
//                     --no-fail-on-empty-changeset \
//                     --parameter-overrides ImageVersion=$GIT_BUILD \
//                     --capabilities CAPABILITY_NAMED_IAM
//                     '''
//                 }
//             }
//         }



//         stage('build-image-and-and-push-to-ecr') {
//             steps {
//                 sh '''
//                     GIT_BUILD=$(git describe --all --long | tr "-" " " | awk '{ print $3 }')
//                     cd app/nodejs/
//                     docker build -t ${REPOSITORY_URI}:${GIT_BUILD} .
//                     aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin ${REPOSITORY_URI}
//                     docker push ${REPOSITORY_URI}:${GIT_BUILD}
//                 '''
//             }
//         }





    }
}