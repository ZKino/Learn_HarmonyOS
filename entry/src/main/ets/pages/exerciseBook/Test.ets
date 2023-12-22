@Entry
@Component
struct TestPage {
  build() {
    Navigation() {
      Scroll() {
        Column() {
          Text('TEST')
          // .height(1000).backgroundColor(Color.Gray)
        }
        .width('100%')
        .height('100%')
      }
      .width('100%')
      .height('100%')
      .border({width: 1, color: Color.Green, style: BorderStyle.Dotted})
    }
    .width('100%')
    .height('100%')
    .title(`TEST`)
    .titleMode(NavigationTitleMode.Mini)
  }
}