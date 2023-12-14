import router from '@ohos.router';

interface INavigation {
  label: string
  path: string
}

@Entry
@Component
struct Index {
  @State navigation: INavigation[] = [
    { label: 'AlphabetIndexer', path: 'pages/baseWidget/AlphabetIndexer' },
    { label: 'Blank', path: 'pages/baseWidget/Blank' },
    { label: 'Checkbox', path: 'pages/baseWidget/Checkbox' },
    { label: 'DataPanel', path: 'pages/baseWidget/DataPanel' },
    { label: 'DatePicker', path: 'pages/baseWidget/DatePicker' },
    { label: 'Test布局练习', path: 'pages/baseWidget/Test' },
    { label: 'prop单向数据传递', path: 'pages/transferCase/PropsCase' },
    { label: 'link双向数据传递', path: 'pages/transferCase/LinkCase' },
    { label: '通用事件', path: 'pages/generalInfo/EventInfo' },
  ]

  build() {
    Column() {
      Row() {
        Text('鸿蒙学习')
      }
      .width('100%')
      .padding(10)
      .justifyContent(FlexAlign.Center)

      Flex({ justifyContent: FlexAlign.Start, wrap: FlexWrap.Wrap }) {
        if (this.navigation.length > 0) {
          ForEach(this.navigation, (item: INavigation) => {
            Button(item.label, { type: ButtonType.Capsule, stateEffect: true })
              .margin({ top: 10, left: 10 })
              .onClick(() => {
                router.pushUrl({ url: item.path }, router.RouterMode.Single)
              })
          })
        }
      }
      .width('100%')
      .padding(10)
    }
  }
}