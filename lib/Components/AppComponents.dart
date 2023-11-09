
import 'package:flutter/material.dart';

backgroundImage(child,BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
       //   colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
        )
    ),
    child: child,
  );
}
BoxDecoration imgDecoration =const BoxDecoration(
color: Colors.black,
image: DecorationImage(
image: AssetImage('assets/images/background.png'),
fit: BoxFit.cover,
//   colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
)
);

backgroundImageDark(child,BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/images/background_dark.png'),
          fit: BoxFit.cover,
          //   colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
        )
    ),
    child: child,
  );
}