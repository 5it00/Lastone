import 'package:doctor_on_demand/cubits/login_cubit.dart';
import 'package:doctor_on_demand/screens/home_screen.dart';
import 'package:doctor_on_demand/screens/login_screen.dart';
import 'package:doctor_on_demand/screens/signup_screen.dart';
import 'package:doctor_on_demand/screens/welcome_screen.dart';
import 'package:doctor_on_demand/shared/bloc_observer.dart';
import 'package:doctor_on_demand/shared/cash_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_material_pickers/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'firebase_options.dart';
import 'network/local/cash_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  await ScreenUtil.ensureScreenSize();
  //  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  //  );

  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  
   bool? isDark = CashHelper.getData(key: "isDark");
   bool? onBoarding = CashHelper.getData(key: "onBoarding") ?? null;
  var uId = await CashHelper.getData(key: 'uId') ?? null;
  var uIdAdmin = await CashHelper.getData(key: 'uIdAdmin') ?? null;
  late Widget widget;

  if (onBoarding != null) {
    if (uId != null) {
      widget = SignUpScreen();
    } else if (uIdAdmin != null) {
      widget = HomeScreen();
    } else {
      widget = LoginScreen();
    }
  } else {
    widget = LoginScreen();
  }

  print("On board Bool Of Refrash is $onBoarding ");
  print("Admin UID Bool Of Refrash is $uIdAdmin ");
  print("normal User uId Bool Of Refrash is $uId ");
runApp(
    RestartWidget(
      child: MyApp(
        startWidget: widget,
        isDark: isDark,
      ),
    ),
  );
}




class MyApp extends StatelessWidget {
  final bool? isDark;

  MyApp({Key? key, required this.startWidget, required this.isDark})
      : super(key: key);
  final Widget startWidget;

  @override
  Widget build(BuildContext context) {
    print('Dark or light boolean is $isDark');
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      //builder: (Context,child)
        // return  MultiBlocProvider(
        //   providers: [
        //     BlocProvider(
        //         create: (context) => SkinCubit()
        //           ..getUserData()
        //           ..getAdminForUsers()),
        //     BlocProvider(
        //         create: (context) => ThemeModeCubit(InitialState())
        //           ..changeAppMode(fromShared: isDark)),
        //     BlocProvider(
        //       create: (context) => AdminCubit()
        //         ..getAllUsersForAdmin()
        //         ..loadOilyProducts()..loadDryProducts()..loadSensitiveProducts()..loadCompinationProducts(),
        //     ),
        //   ],
          // child: BlocConsumer<ThemeModeCubit, SkinStates>(
          //   listener: (context, state) {},
          //   builder: (context, state) {
          //     return MaterialApp(
          //       useInheritedMediaQuery: true,
          //       locale:DevicePreview.locale(context) ,
          //       builder: DevicePreview.appBuilder,
          //       debugShowCheckedModeBanner: false,
          //       theme: lightTheme,
          //       darkTheme: darkTheme,
          //       themeMode: ThemeModeCubit.get(context).isDark
          //           ? ThemeMode.dark
          //           : ThemeMode.light,
          //       home: startWidget,
          //     );
          //   },
          // ),
        );

      //},
    //);
  }
}

class RestartWidget extends StatefulWidget {
  const RestartWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()?.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }







//   runApp(MyApp(
//     RestartWidget(
//       child: MyApp(
//         startWidget: widget,
//         isDark: isDark,
//       ),
//     ),
//   ));
  
// }
// class MyApp extends StatelessWidget {
//   const MyApp(restartWidget, {super.key, required Widget startWidget, bool? isDark});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(













































      
//     // return StreamBuilder(
//     // stream: FirebaseAuth.instance.authStateChanges(),
//     // builder:(context, snapshot) {
//     //   if(snapshot.hasData){
//     //     return  WelcomeScreen();
//     //   }else{
//     //     return  LoginScreen(
//     //       ProviderConfigs:[
//     //       EmailAuthProvider(),
//     //       ]
//     //     );
//     //   }
//     // },

//       debugShowCheckedModeBanner: false,
//       home: WelcomeScreen(),

//     );
//   }
 }