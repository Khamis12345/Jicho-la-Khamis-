#!/usr/bin/env sh
# Gradle startup script for Unix

APP_HOME=$(dirname "$0")
APP_NAME="Gradle"
JAVA_HOME=${JAVA_HOME:-/usr/lib/jvm/default-java}
JAVA_EXE="$JAVA_HOME/bin/java"

if [ ! -x "$JAVA_EXE" ]; then
  echo "Error: JAVA_HOME is not set and no 'java' command could be found in your PATH." >&2
  exit 1
fi

exec "$JAVA_EXE" -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
