import router from '@ohos.router'
import day from '@ohos.systemDateTime'
import Nav from '../../components/Nav'

@Entry
@Component
struct DatePickerPage {
  @State isLunar: boolean = false
  private selectedDate: Date = new Date('2023-12-03')

  build() {
    Column() {
      Nav({ title: 'DatePicker控件' })

      Column() {
        Button('切换公历农历')
          .margin({ bottom: 30 })
          .onClick(() => {
            this.isLunar = !this.isLunar
          })

        DatePicker({
          start: new Date('1970-1-1'),
          end: new Date('2100-1-1'),
          selected: this.selectedDate
        })
          .lunar(this.isLunar)
          .onChange((value: DatePickerResult) => {
            console.log(JSON.stringify(value))
          })
      }
      .width('100%')
      .border({ width: 1, color: Color.Red, style: BorderStyle.Dotted })
    }
  }
}