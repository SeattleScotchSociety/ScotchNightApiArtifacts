FROM microsoft/aspnetcore

WORKDIR /app
COPY ./bin/Debug/netcoreapp1.1/publish . 

ADD your_ca_root.crt /usr/local/share/ca-certificates/foo.crt
RUN update-ca-certificates

ENV ASPNETCORE_URLS http://+:80
EXPOSE 80

ENTRYPOINT ["dotnet", "SeattleScotchSociety.ScotchNight.Api.dll"]



