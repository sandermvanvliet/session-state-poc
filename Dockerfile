FROM microsoft/aspnetcore
WORKDIR /app
EXPOSE 80/tcp
COPY dpapi-key.xml /dpapi/dpapi-key.xml
CMD ["dotnet", "/app/verysimple.dll", "--server.urls", "http://*:80"]
