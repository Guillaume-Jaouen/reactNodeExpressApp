pipeline {
    environment {
    PATH = "$PATH:/var/lib/jenkins/workspace/ReacNodeExpressApp/"
    }
    agent any
    stages {
        stage('Cloning git') {
            steps {
                git([url:'https://github.com/Guillaume-Jaouen/reactNodeExpressApp',branch:'release'])

                sh 'git config --global user.email "guillaume.jaouen@efrei.net"'
                sh 'git config --global user.name "Guillaume-Jaouen"'
		        sh "git pull origin dev"
            }
        }
        stage('Building') {
            steps {
                echo "PATH is: $PATH"
                sh "docker-compose build"
            }
        }

        stage('Testing') {
            steps {
                //sh "docker-compose up"
                echo 'Testing'
                //sh "docker-compose down"
            }
        }
        stage('pushing into git'){
            steps {
                    sh 'git config --global user.email "guillaume.jaouen@efrei.net"'
                    sh 'git config --global user.name "Guillaume-Jaouen"'
                    git([url:'https://github.com/Guillaume-Jaouen/reactNodeExpressApp', credentialsId: 'guillaume', branch: 'release'])
                    sh 'git checkout origin/release'
                    sh 'git merge origin/dev'
                    sh 'git commit -m "Merged dev branch to release'
                    sh "git push origin release"
            }
        }


    }
}