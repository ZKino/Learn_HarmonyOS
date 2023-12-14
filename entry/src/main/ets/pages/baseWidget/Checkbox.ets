import router from '@ohos.router'
import Nav from '../../components/Nav'

@Entry
@Component
struct CheckboxPage {
  build() {
    Column() {
      Nav({ title: 'Checkbox控件' })

      Column() {
        Flex({ alignItems: ItemAlign.Center }) {
          CheckboxGroup({ group: 'fruits' })
            .selectAll(true)
            .selectedColor(Color.Brown)
            .onChange((itemName: CheckboxGroupResult) => {
              console.info("checkbox group content" + JSON.stringify(itemName))
            })
          Text('全选')
        }

        Flex({ alignItems: ItemAlign.Center }) {
          Checkbox({ name: 'a', group: 'fruits' })
            .selectedColor(Color.Red)
          Text('苹果')
        }.padding({ left: 20 })

        Flex({ alignItems: ItemAlign.Center }) {
          Checkbox({ name: 'b', group: 'fruits' })
            .selectedColor(Color.Orange)
          Text('桃子')
        }.padding({ left: 20 })

        Flex({ alignItems: ItemAlign.Center }) {
          Checkbox({ name: 'c', group: 'fruits' })
            .selectedColor(Color.Green)
          Text('菠萝')
        }.padding({ left: 20 })
      }
      .width('100%')
      .border({ width: 1, color: Color.Red, style: BorderStyle.Dashed })
    }
  }
}