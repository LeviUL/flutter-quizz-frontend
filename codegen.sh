echo "Executing codegen..."
openapi-generator-cli generate -i openapi-spec.yaml -g dart-dio -o openapi
cd openapi
flutter pub add dev:build_runner
flutter pub run build_runner build
echo "Types has been generated!"
