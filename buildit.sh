CF_DIR=/Users/lazaro/checker-framework/checker

CF_JAR=${CF_DIR}/dist/checker.jar
CF_JAVAC=${CF_DIR}/bin/javac

javac -classpath "${CF_JAR}"  -d . src/com/example/b/*.java 
jar cf b.jar com/example/b/*.class
# javac -classpath "${CF_JAR}:b.jar" -d . -processor org.checkerframework.checker.guieffect.GuiEffectChecker -Astubs=. -AprintErrorStack src/com/example/a/*.java 
${CF_JAVAC} -classpath b.jar -d . -processor org.checkerframework.checker.guieffect.GuiEffectChecker -Astubs=. -AprintErrorStack src/com/example/a/*.java 
