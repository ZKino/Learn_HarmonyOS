import router from '@ohos.router';

@Component
struct Nav {
  private title: string = 'Default Title'

  @Styles commonStyle() {
    .width(24)
    .height(24)
  }

  build() {
    Row() {
      Image($r('app.media.icon'))
        .commonStyle()
        .onClick(() => router.back())

      Text(this.title)
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .fontColor(Color.White)
        .margin({ left: 10, right: 10 })
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })

      Image($r('app.media.icon'))
        .commonStyle()
        .visibility(Visibility.Hidden)
    }
    .width('100%')
    .height(44)
    .padding({ left: 10, right: 10 })
    .backgroundColor('#0078FF')
  }
}

export default Nav
