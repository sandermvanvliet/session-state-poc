FROM microsoft/aspnetcore
WORKDIR /app
EXPOSE 80/tcp
CMD ["dotnet", "/app/verysimple.dll", "--server.urls", "http://*:80"]
