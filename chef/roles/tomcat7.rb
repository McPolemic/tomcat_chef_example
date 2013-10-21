name "tomcat7"
run_list "recipe[tomcat]"
default_attributes(
    :java => {
        :jdk_version => "7"
    },
    :tomcat => {
        :base_version => "7",
        :java_options => "-Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms1536m -Xmx1536m -XX:NewSize=256m -XX:MaxNewSize=256m -XX:PermSize=256m -XX:MaxPermSize=512m -XX:+DisableExplicitGC"
    }
)
