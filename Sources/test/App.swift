@_exported import TokamakCore
@_exported import TokamakDOM
@_exported import testLibrary

@main
struct TokamakApp: App
{
    static let _configuration = _AppConfiguration(reconciler: .fiber(useDynamicLayout: true))

  var body: some Scene
  {
    WindowGroup("Tokamak App")
    {
      ContentView()
    }
  }
}

struct ContentView: View
{
  var body: some View
  {
  VStack(alignment:.leading) {
    Color.black
    HStack(alignment:.top)
    {
       Text("Hellgo World")
         .font(.title)
         .fontWeight(.bold)
         .foregroundStyle(.white)
         .padding()
      Spacer()        
    }
    Spacer()
  }
  }
}