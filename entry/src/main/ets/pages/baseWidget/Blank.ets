import router from '@ohos.router'
import Nav from '../../components/Nav'

@Entry
@Component
struct BlankPage {
  build() {
    Column() {
      Nav({ title: 'BlankPage控件' })
      Row() {
        Text('Bluetooth').fontSize(18)
          .margin({ top: 14, bottom: 14, left: 6, right: 6 })

        Blank().color(Color.Red)

        Toggle({ type: ToggleType.Switch })
          .margin({ top: 14, bottom: 14, left: 6, right: 6 })
      }
      .width('100%')
      .border({ width: 1, color: Color.Red, style: BorderStyle.Dashed })
    }
  }
}