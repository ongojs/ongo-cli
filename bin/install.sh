function install(){
   if [ ! -d $1 ]; then
        mkdir  -p $1;
        cd $1
        git clone git@gitlab.com:node-mvc/ongo/ongo.git . 
        git checkout master;
        npm install; 
        npm update; 
        npm upgrade; 
        rm -rdf .git 
    else 
        echo "Project directory exists!";
    fi
   
}

install $1;