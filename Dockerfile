FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

# Прописываем в sources для apt-get майкрософтские пути
RUN apt-get update \
    && apt-get install apt-transport-https gnupg -y \
    && wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
    mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/  && \
    wget -q https://packages.microsoft.com/config/debian/9/prod.list  && \
    mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && apt-get update

RUN cd /bin && \
    curl -o /JetBrains.dotCover.CommandLineTools.linux-x64.2020.1.4.tar.gz \
    https://download-cf.jetbrains.com/resharper/ReSharperUltimate.2020.1.4/JetBrains.dotCover.CommandLineTools.linux-x64.2020.1.4.tar.gz && \
    tar xvf /JetBrains.dotCover.CommandLineTools.linux-x64.2020.1.4.tar.gz && \
    cd /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
