@Entry
@Component
struct About {
  @State message: string = 'Hello World';
  @State arr: string[] = ['a', 'b', 'c']
  @State arr1: string[] = ['d', 'e', 'f']

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page1HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      List() {
        ForEach(this.arr, (item: string, i: number) => {
          ListItem() {
            Button(item)
          }.width('100%')
        })
      }.alignListItem(ListItemAlign.Center).width('100%').height('auto')

      Grid() {
        ForEach(this.arr1, (item: string, i: number) => {
          GridItem() {
            Button(item)
          }
        })
      }
    }
    .height('100%')
    .width('100%')

  }
}