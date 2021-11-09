FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

RUN cd /bin && \
    curl -o /JetBrains.dotCover.CommandLineTools.linux-x64.2020.1.4.tar.gz \
    https://download-cf.jetbrains.com/resharper/ReSharperUltimate.2020.1.4/JetBrains.dotCover.CommandLineTools.linux-x64.2020.1.4.tar.gz && \
    tar xvf /JetBrains.dotCover.CommandLineTools.linux-x64.2020.1.4.tar.gz && \
    cd /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
