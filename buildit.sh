CF_JAR=/Users/lazaro/checker-framework/checker/dist/checker.jar

javac -classpath "${CF_JAR}"  -d . src/com/example/b/*.java 
jar cf b.jar com/example/b/*.class
javac -classpath "${CF_JAR}:b.jar" -d . -processor org.checkerframework.checker.guieffect.GuiEffectChecker -Astubs=. -AprintErrorStack src/com/example/a/*.java 
