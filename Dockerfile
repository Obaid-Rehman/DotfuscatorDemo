FROM registry.access.redhat.com/ubi8/dotnet-31-runtime 
WORKDIR /app
EXPOSE 80

COPY artifacts/ .

USER 1001
ENTRYPOINT ["dotnet", "Hello-World-App.dll"]
