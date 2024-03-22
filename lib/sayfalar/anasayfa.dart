
import 'package:coffe_shop_figma/style_dosyasi/renkler.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: anaRenk,
        body:
            Center(
              child:  Padding(
                padding:  EdgeInsets.only(top: ekranYuksekligi / 40),

                child: Column(
                  children: [
                    //ust bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding:  EdgeInsets.only(left: 10,),
                        child: Row(

                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                              children: [
                                Text("Morning Brew",style: TextStyle(fontFamily: 'Montserrat',color: yaziRenk,fontSize: 24,fontWeight: FontWeight.bold),),
                                Text("Purchases",style: TextStyle(fontFamily: 'Montserrat',color: yaziRenk,fontSize: 12,fontWeight: FontWeight.normal),),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                          decoration:BoxDecoration(color: Colors.white, borderRadius:BorderRadius.circular(50)),
                      child: IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_outlined),color: ikonRenk, )),
                    ),
                    ],),
                   //urun resmi
                    const Image(image: AssetImage("lib/resimler/urun1.png"),),
                    Padding(
                      padding: EdgeInsets.only(left: ekranGenisligi/10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(children: [
                          Star(),
                          Star(),
                          Star(),
                          Star(),
                          Star(),
                          Star(),
                        ],),
                          const SizedBox(height: 5,),
                          Text("Coffee Title",style: TextStyle(fontFamily: 'Montserrat',color: yaziRenk,fontSize: 36,fontWeight: FontWeight.bold),),
                           SizedBox(width: ekranGenisligi/1.3,
                              child: Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, to....",style: TextStyle(fontFamily: 'Montserrat',color: yaziRenk,fontSize: 16,fontWeight: FontWeight.bold),)),
                          Text("\$ 12.90",style: TextStyle(fontFamily: 'Montserrat',color: yaziRenk,fontSize: 36,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),

                    SizedBox(height: ekranYuksekligi/13,
                        width: ekranGenisligi/1.2,
                        child: TextButton(onPressed: (){},style: TextButton.styleFrom(backgroundColor: Colors.white), child:  const Text("ADD TO CARD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.blue),),)),
                  ],),
              ),
            ),
      ),
    );
  }
}


class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return
      const SizedBox(height: 5,
          child: Row(children: [Icon(Icons.star_border,color: Colors.white,size: 15,)],))
    ;
  }
}

