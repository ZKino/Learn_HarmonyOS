import router from '@ohos.router';

@Entry
@Component
export default struct ExerciseBook {
  build() {
    Column() {
      Text('练习页面')
      Button('Link')
        .onClick(() => {
          router.pushUrl({ url: 'pages/exerciseBook/Test' })
        })
    }
  }
}