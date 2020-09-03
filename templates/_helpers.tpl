{{- $composeFileDocker := (.Files.Get "docker-compose.yml") | fromYaml -}}
{{- $composeFile := .Values -}}
