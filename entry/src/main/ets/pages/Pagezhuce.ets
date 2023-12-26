import router from '@ohos.router'
@Entry
@Component
struct Pagezhuce {
  @State message: string = 'Hello World'
jumpback(){
  router.push({
    url:'pages/MainPage'
  });
}
  
  build() {
    Column() {
      Column() {
        Image($r('app.media.fanhui'))
          .width("59.2vp")
          .height("54.94vp")
          .offset({ x: "-136.22vp", y: "20.35vp" })
          .onClick(this.jumpback.bind(this))
        Text("快递搜索页面")
          .width("200vp")
          .height("60vp")
          .offset({ x: "27.33vp", y: "-25.17vp" })
          .fontSize("30fp")
        Search({})
          .width("90.52%")
          .height("41.07vp")
          .offset({ x: "5.05vp", y: "-18.41vp" })
          .searchButton("搜索")
        Row()
          .width("319.11vp")
          .height("198.67vp")
        Scroll() {
          List() {
            ListItem() {
              Text("快递信息")
                .width("200vp")
                .height("60vp")
                .fontSize("31fp")
            }            
            .width("100%")
            .height("123.11vp")
            ListItem()
              .width("100%")
              .height("94.67vp")
          }          
          .width("360vp")
          .height("551.55vp")
        }        
        .width("100%")
        .height("79.94%")
        .offset({ x: "-3.45vp", y: "-204.1vp" })
        .scrollable(ScrollDirection.Vertical)
        .scrollBar(BarState.Auto)
        .edgeEffect(EdgeEffect.None)
      }      
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }    
    .width("100%")
    .height("100%")
  }
}