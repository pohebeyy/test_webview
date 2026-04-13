

минимальное приложение-обёртка, которое сразу открывает:
`https://browserjunkie.marlerino-apps.io/`

## стек

- Flutter 3.x
- `webview_flutter` + платформенные реализации:
  - `webview_flutter_wkwebview` (iOS)
  


## что реализовано

- приложение стартует сразу в целевой URL, без промежуточных экранов.
- один полноэкранный WebView без адресной строки/внутреннего меню.
- навигация по истории:
  - ios: нативные back/forward свайпы `WKWebView` (`allowsBackForwardNavigationGestures = true`).
- встроены разрешения для медиа и файлов:
  - ios: `NSCameraUsageDescription`, `NSMicrophoneUsageDescription`, `NSPhotoLibraryUsageDescription`, `NSPhotoLibraryAddUsageDescription`.
- Поддержка портретной и ландшафтной ориентаций включена в iOS-конфиге, состояние страницы сохраняется, т.к. используется один persistent `WebViewController`.

## как запускать



### установить зависимостей

```bash
flutter pub get
```

### запуск на ios

```bash
flutter run -d ios
```

или открыть `ios/Runner.xcworkspace` в Xcode и запустить `Runner`.



## ключевые решения и обоснование

- выбран `webview_flutter` (официальный пакет): минимальная зависимость и доступ к нативным возможностям `WKWebView`/`Android WebView`.
- не добавлялись сторонние UI-надстройки над WebView: это снижает риск регрессий и сохраняет поведение, близкое к нативному браузеру.
- Навигация сделана через встроенные механизмы платформ:
  - iOS-жесты реализуются самим `WKWebView` и ощущаются привычно (как Safari).
  


