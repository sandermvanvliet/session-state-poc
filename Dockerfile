FROM microsoft/aspnetcore
WORKDIR /app
COPY ./published-app /app
EXPOSE 80/tcp
CMD ["dotnet", "/app/verysimple.dll", "--server.urls", "http://*:80"]
