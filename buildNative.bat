call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

cd build
dir
rem C:\junk\graalvm-ce-java11-windows-amd64-20.0.0\graalvm-ce-java11-20.0.0
rem C:\junk\graalvm-ce-java11-windows-amd64-19.3.1\graalvm-ce-java11-19.3.1
C:\junk\graalvm-ce-java11-windows-amd64-20.0.0\graalvm-ce-java11-20.0.0\bin\native-image.cmd "-J-Dsun.nio.ch.maxUpdateArraySize=100" "-J-Djava.util.logging.manager=org.jboss.logmanager.LogManager" "-J-Dvertx.logger-delegate-factory-class-name=io.quarkus.vertx.core.runtime.VertxLogDelegateFactory" "-J-Dvertx.disableDnsResolver=true" "-J-Dio.netty.leakDetection.level=DISABLED" "-J-Dio.netty.allocator.maxOrder=1" "-J-Duser.language=en" "-J-Dfile.encoding=Cp1252" "--initialize-at-build-time= "  "-H:InitialCollectionPolicy=com.oracle.svm.core.genscavenge.CollectionPolicy$BySpaceAndTime" "-H:+JNI" -jar quarkus-with-gh-actions-999-SNAPSHOT-runner.jar "-H:FallbackThreshold=0" -H:+ReportExceptionStackTraces -H:-AddAllCharsets -H:-IncludeAllTimeZones -H:-SpawnIsolates -H:-UseServiceLoaderFeature -H:+StackTrace quarkus-with-gh-actions-999-SNAPSHOT-runner 
