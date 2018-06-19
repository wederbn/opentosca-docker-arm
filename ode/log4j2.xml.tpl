<Configuration>
    <Appenders>
        <File name="FILE" fileName="ode.log" append="true">
            <PatternLayout pattern="%d{ABSOLUTE} %-5p [%c{1}] %m%n"/>
        </File>
        <Console name="STDOUT" target="SYSTEM_OUT">
            <PatternLayout pattern="%d{ABSOLUTE} %-5p [%c{1}] %m%n"/>
        </Console>
        <Async name="Async">
            <AppenderRef ref="FILE"/>
            <!--<AppenderRef ref="STDOUT"/>-->
        </Async>
    </Appenders>

    <Loggers>
        <Logger name="org.apache.ode" level="{{ .Env.LOG_LEVEL }}" additivity="false">
            <AppenderRef ref="FILE"/>
        </Logger>
        <Logger name="org.apache.axis2" level="info" additivity="false">
            <AppenderRef ref="FILE"/>
        </Logger>
        <Logger name="org.hibernate" level="info" additivity="false">
            <AppenderRef ref="FILE"/>
        </Logger>
        <Logger name="org.apache.openjpa" level="info" additivity="false">
            <AppenderRef ref="FILE"/>
        </Logger>
        <Logger name="org.springframework" level="error" additivity="false">
            <AppenderRef ref="FILE"/>
        </Logger>

        <Root level="error">
            <AppenderRef ref="Async"/>
        </Root>
    </Loggers>

</Configuration>
