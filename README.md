# provider_counter

Provider ile yaptığım ilk uygulama 

##Provider böyle uygulamaya bağlıyorum

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Click_Notifier(),
      lazy: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Provider Click'),
      ),
    );
  }
}
