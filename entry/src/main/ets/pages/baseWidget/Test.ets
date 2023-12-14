import router from '@ohos.router'
import Nav from '../../components/Nav'

@Entry
@Component
struct TestPage {
  build() {
    Column() {
      Nav({ title: 'Test布局练习' })

      Row() {
        Text('999')
          .height(20)
          .width('100%')
          .backgroundColor(Color.Green)
      }
      .width('100%')
      .padding({left: 16, right: 16, top: 16, bottom: 16})
      .backgroundColor(Color.Red)
    }
  }
}