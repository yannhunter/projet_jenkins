node {
    stage('Clone') {
        git 'https://github.com/yannhunter/projet_jenkins.git'  
    }
   stage('Build ') {
     
       sh '''
            javac Main.java
        '''
   }
    stage('Run') {
     sh ''' 
            java Main
        '''
}
}
