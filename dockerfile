ARG MSR_VERSION=11.1.0.5

FROM ibmwebmethods.azurecr.io/webmethods-microservicesruntime:${MSR_VERSION}

USER sagadmin:root

# copy package(s)
COPY --chown=sagadmin:root assets/Packages/Testing/ $SAG_HOME/IntegrationServer/packages/Testing/

#change the config file to make it writable
RUN chmod +w $SAG_HOME/IntegrationServer/packages/Testing/config/globalVariables.cnf

# run Jcode to build the java code
RUN true \
    && $SAG_HOME/IntegrationServer/bin/jcode.sh make Testing \
    && true