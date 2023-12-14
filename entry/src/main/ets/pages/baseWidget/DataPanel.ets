import router from '@ohos.router'
import Nav from '../../components/Nav'

@Entry
@Component
struct DataPanelPage {
  build() {
    Column() {
      Nav({ title: 'DataPanel控件' })

      Row() {
        DataPanel({ values: [10, 10, 10, 10, 10, 10, 10, 10, 10], max: 100, type: DataPanelType.Line })
          .width(300)
          .height(10)
          // .backgroundColor(Color.Red)
      }
      .width('100%')
      .margin({ top: 10 })
      .border({ width: 1, color: Color.Red, style: BorderStyle.Dashed })

      Row() {
        DataPanel({ values: [10, 10, 10, 10, 10, 10, 10, 10, 10], max: 100, type: DataPanelType.Circle })
          .width(168)
          .height(168)
        // .backgroundColor(Color.Red)
      }
      .width('100%')
      .margin({ top: 10 })
      .border({ width: 1, color: Color.Red, style: BorderStyle.Dashed })
    }
  }
}