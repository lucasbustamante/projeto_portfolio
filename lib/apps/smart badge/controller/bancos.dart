import 'package:flutter/material.dart';
import '../view/qrpix.dart';

class Bancos extends StatefulWidget {
  final String banco;
  final String logo;

  const Bancos({super.key, required this.banco, required this.logo});

  @override
  State<Bancos> createState() => _BancosState();
}



class _BancosState extends State<Bancos> {


  @override
  Widget build(BuildContext context) {
Color color = Color(0xff);
String link2 = '';
    switch(widget.logo){
      case 'itau' :
        link2 = '00020126360014BR.GOV.BCB.PIX0114+55119802632005204000053039865'
            '802BR5916Lucas Bustamante6009Sao Paulo62070503***6304E380';
        color = Color(0xffE06A00);
        break;
      case 'picpay' :
        link2 = "00020126520014BR.GOV.BCB.PIX0130lucascostabusta"
            "mante@gmail.com5204000053039865802BR5916Lucas Busta"
            "mante6009Sao Paulo62070503***6304F8B8";
        color = Color(0xff1EB155);
        break;
      case 'mercadopago' :
        link2 = '00020126580014BR.GOV.BCB.PIX0136a90a7beb-807f-4e94-b35c-5c044'
            '7e70cbd5204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***63042406';
        color = Color(0xff02A6E7);
        break;
      case 'ame' :
        link2 = '00020126820014BR.GOV.BCB.PIX016000020126580014br.gov.bcb.pix'
            '01361b6e67f6-d349-434f-90ae-a04b5204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***6304E5AC';
        color = Color(0xffc73268);
        break;
      case 'c6' :
        link2 = '00020126580014BR.GOV.BCB.PIX0136efa35ebd-8c27-438e-acfc-92321b'
            'cf9bc85204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***63047A44';
        color = Color(0xff363636);
        break;
      case '99' :
        link2 = '00020126580014BR.GOV.BCB.PIX013692369843-daa2-4735-a3b6-a26f6'
            '06c2f935204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***6304C022';
        color = Color(0xffF2D100);
        break;
        case 'caixa' :
      link2 = '00020126580014BR.GOV.BCB.PIX0136702d5119-576c-4b35-8a20-3a67cc99e'
          'b485204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***6304831A';
      color = Color(0xff175994);
      break;
    }



    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            QrPix(
              color: color,
              banco: widget.banco,
              logo: widget.logo,
              link: link2,)));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 75,
          width: 260,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white24
          ),
          child: Row(
            children: [
              Image.asset("assets/images/apps/${widget.logo}.png", width: 60,),
              SizedBox(width: 30),
              Text(widget.banco, style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
