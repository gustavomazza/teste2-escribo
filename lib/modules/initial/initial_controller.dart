import 'dart:math';
import 'package:flutter_application_4/global/widgets/mensagem.dart';
import 'package:get/get.dart';

//Esta seria a classe CobrasEscadas, porém mantive um padrão que tenho utilizado
class InitialController extends GetxController {
  Random dado1 = Random();
  Random dado2 = Random();
  RxInt dadoUm = 1.obs;
  RxInt dadoDois = 1.obs;

  RxString vez = 'jog1'.obs;
  bool acabou = false;

  RxInt pontosJogador1 = 0.obs;
  int p1 = 0;
  RxInt pontosJogador2 = 0.obs;
  int p2 = 0;

  jogarDados() async {
    if (acabou) {
      mensagem('O jogo acabou!', '');
    } else {
      dadoUm.value = 1 + dado1.nextInt(7 - 1);
      dadoDois.value = 1 + dado2.nextInt(7 - 1);
      await jogar(dadoUm.value, dadoDois.value, vez);
    }
  }

  jogar(dadoUm, dadoDois, vez) async {
    //jogador 1
    if (vez.value == 'jog1') {
      int somaDados = dadoUm + dadoDois;
      p1 = p1 + somaDados;
      pontosJogador1.value = p1;

      switch (pontosJogador1.value) {
        //Cobra
        case 99:
          pontosJogador1.value = 80;
          p1 = 80;
          mensagem('Ops! Cabeça de Cobra 99...', 'Volte para a casa 80');

          break;
        case 95:
          pontosJogador1.value = 75;
          p1 = 75;
          mensagem('Ops! Cabeça de Cobra 95...', 'Volte para a casa 75');
          break;
        case 92:
          pontosJogador1.value = 88;
          p1 = 88;
          mensagem('Ops! Cabeça de Cobra 92...', 'Volte para a casa 88');
          break;
        case 89:
          pontosJogador1.value = 68;
          p1 = 68;
          mensagem('Ops! Cabeça de Cobra 89...', 'Volte para a casa 68');
          break;
        case 74:
          pontosJogador1.value = 53;
          p1 = 53;
          mensagem('Ops! Cabeça de Cobra 74...', 'Volte para a casa 53');
          break;
        case 64:
          pontosJogador1.value = 60;
          p1 = 60;
          mensagem('Ops! Cabeça de Cobra 64...', 'Volte para a casa 60');
          break;
        case 62:
          pontosJogador1.value = 19;
          p1 = 19;
          mensagem('Ops! Cabeça de Cobra 62...', 'Volte para a casa 19');
          break;
        case 49:
          pontosJogador1.value = 11;
          p1 = 11;
          mensagem('Ops! Cabeça de Cobra 49...', 'Volte para a casa 11');
          break;
        case 46:
          pontosJogador1.value = 25;
          p1 = 25;
          mensagem('Ops! Cabeça de Cobra 46...', 'Volte para a casa 25');
          break;
        case 16:
          pontosJogador1.value = 6;
          p1 = 6;
          mensagem('Ops! Cabeça de Cobra 16...', 'Volte para a casa 6');
          break;
        //Escadas
        case 2:
          pontosJogador1.value = 38;
          p1 = 38;
          mensagem('Obaaa! Escada 2...', 'Suba até a casa 38');
          break;
        case 7:
          pontosJogador1.value = 14;
          p1 = 14;
          mensagem('Obaaa! Escada 7...', 'Suba até a casa 14');
          break;
        case 8:
          pontosJogador1.value = 31;
          p1 = 31;
          mensagem('Obaaa! Escada 8...', 'Suba até a casa 31');
          break;
        case 15:
          pontosJogador1.value = 26;
          p1 = 26;
          mensagem('Obaaa! Escada 15...', 'Suba até a casa 26');
          break;
        case 21:
          pontosJogador1.value = 42;
          p1 = 42;
          mensagem('Obaaa! Escada 21...', 'Suba até a casa 42');
          break;
        case 28:
          pontosJogador1.value = 84;
          p1 = 84;
          mensagem('Obaaa! Escada 28...', 'Suba até a casa 84');
          break;
        case 36:
          pontosJogador1.value = 44;
          p1 = 44;
          mensagem('Obaaa! Escada 36...', 'Suba até a casa 44');
          break;
        case 51:
          pontosJogador1.value = 67;
          p1 = 67;
          mensagem('Obaaa! Escada 51...', 'Suba até a casa 67');
          break;
        case 71:
          pontosJogador1.value = 91;
          p1 = 91;
          mensagem('Obaaa! Escada 71...', 'Suba até a casa 91');
          break;
        case 78:
          pontosJogador1.value = 98;
          p1 = 98;
          mensagem('Obaaa! Escada 78...', 'Suba até a casa 98');
          break;
        case 87:
          pontosJogador1.value = 94;
          p1 = 94;
          mensagem('Obaaa! Escada 87...', 'Suba até a casa 94');
          break;
      }

      if (pontosJogador1.value > 100) {
        var total = pontosJogador1.value - 100;
        var pontuacaoCorreta = 100 - total;
        pontosJogador1.value = pontuacaoCorreta;
        p1 = pontuacaoCorreta;

        await mensagem('Ops! Você passou de 100...',
            'Vá para a casa ' + pontosJogador1.value.toString());
        switch (pontosJogador1.value) {
          //Cobra
          case 99:
            pontosJogador1.value = 80;
            p1 = 80;
            mensagem('Ops! Cabeça de Cobra 99...', 'Volte para a casa 80');

            break;
          case 95:
            pontosJogador1.value = 75;
            p1 = 75;
            mensagem('Ops! Cabeça de Cobra 95...', 'Volte para a casa 75');
            break;
          case 92:
            pontosJogador1.value = 88;
            p1 = 88;
            mensagem('Ops! Cabeça de Cobra 92...', 'Volte para a casa 88');
            break;
        }
      }

      if (pontosJogador1.value == 100) {
        mensagem('Jogador 1 venceu!', '');
        acabou = true;
      } else {
        mensagem('Jogador 1 está na casa', pontosJogador1.value.toString());

        if (dadoUm == dadoDois) {
          vez.value = 'jog1';
          mensagem('Você tirou dados iguais!', 'Jogue novamente');
        } else {
          vez.value = 'jog2';
        }
      }
    }
    // jogador 2
    else if (vez.value == 'jog2') {
      int somaDados = dadoUm + dadoDois;
      p2 = p2 + somaDados;
      pontosJogador2.value = p2;

      switch (pontosJogador2.value) {
        //Cobra
        case 99:
          pontosJogador2.value = 80;
          p2 = 80;
          mensagem('Ops! Cabeça de Cobra 99...', 'Volte para a casa 80');

          break;
        case 95:
          pontosJogador2.value = 75;
          p2 = 75;
          mensagem('Ops! Cabeça de Cobra 95...', 'Volte para a casa 75');
          break;
        case 92:
          pontosJogador2.value = 88;
          p2 = 88;
          mensagem('Ops! Cabeça de Cobra 92...', 'Volte para a casa 88');
          break;
        case 89:
          pontosJogador2.value = 68;
          p2 = 68;
          mensagem('Ops! Cabeça de Cobra 89...', 'Volte para a casa 68');
          break;
        case 74:
          pontosJogador2.value = 53;
          p2 = 53;
          mensagem('Ops! Cabeça de Cobra 74...', 'Volte para a casa 53');
          break;
        case 64:
          pontosJogador2.value = 60;
          p2 = 60;
          mensagem('Ops! Cabeça de Cobra 64...', 'Volte para a casa 60');
          break;
        case 62:
          pontosJogador2.value = 19;
          p2 = 19;
          mensagem('Ops! Cabeça de Cobra 62...', 'Volte para a casa 19');
          break;
        case 49:
          pontosJogador2.value = 11;
          p2 = 11;
          mensagem('Ops! Cabeça de Cobra 49...', 'Volte para a casa 11');
          break;
        case 46:
          pontosJogador2.value = 25;
          p2 = 25;
          mensagem('Ops! Cabeça de Cobra 46...', 'Volte para a casa 25');
          break;
        case 16:
          pontosJogador2.value = 6;
          p2 = 6;
          mensagem('Ops! Cabeça de Cobra 16...', 'Volte para a casa 6');
          break;
        //Escadas
        case 2:
          pontosJogador2.value = 38;
          p2 = 38;
          mensagem('Obaaa! Escada 2...', 'Suba até a casa 38');
          break;
        case 7:
          pontosJogador2.value = 14;
          p2 = 14;
          mensagem('Obaaa! Escada 7...', 'Suba até a casa 14');
          break;
        case 8:
          pontosJogador2.value = 31;
          p2 = 31;
          mensagem('Obaaa! Escada 8...', 'Suba até a casa 31');
          break;
        case 15:
          pontosJogador2.value = 26;
          p2 = 26;
          mensagem('Obaaa! Escada 15...', 'Suba até a casa 26');
          break;
        case 21:
          pontosJogador2.value = 42;
          p2 = 42;
          mensagem('Obaaa! Escada 21...', 'Suba até a casa 42');
          break;
        case 28:
          pontosJogador2.value = 84;
          p2 = 84;
          mensagem('Obaaa! Escada 28...', 'Suba até a casa 84');
          break;
        case 36:
          pontosJogador2.value = 44;
          p2 = 44;
          mensagem('Obaaa! Escada 36...', 'Suba até a casa 44');
          break;
        case 51:
          pontosJogador2.value = 67;
          p2 = 67;
          mensagem('Obaaa! Escada 51...', 'Suba até a casa 67');
          break;
        case 71:
          pontosJogador2.value = 91;
          p2 = 91;
          mensagem('Obaaa! Escada 71...', 'Suba até a casa 91');
          break;
        case 78:
          pontosJogador2.value = 98;
          p2 = 98;
          mensagem('Obaaa! Escada 78...', 'Suba até a casa 98');
          break;
        case 87:
          pontosJogador2.value = 94;
          p2 = 94;
          mensagem('Obaaa! Escada 87...', 'Suba até a casa 94');
          break;
      }

      if (pontosJogador2.value > 100) {
        var total = pontosJogador2.value - 100;
        var pontuacaoCorreta = 100 - total;
        pontosJogador2.value = pontuacaoCorreta;
        p2 = pontuacaoCorreta;

        await mensagem('Ops! Você passou de 100...',
            'Vá para a casa ' + pontosJogador2.value.toString());
        switch (pontosJogador2.value) {
          //Cobra
          case 99:
            pontosJogador2.value = 80;
            p2 = 80;
            mensagem('Ops! Cabeça de Cobra 99...', 'Volte para a casa 80');

            break;
          case 95:
            pontosJogador2.value = 75;
            p2 = 75;
            mensagem('Ops! Cabeça de Cobra 95...', 'Volte para a casa 75');
            break;
          case 92:
            pontosJogador2.value = 88;
            p2 = 88;
            mensagem('Ops! Cabeça de Cobra 92...', 'Volte para a casa 88');
            break;
        }
      }

      if (pontosJogador2.value == 100) {
        mensagem('Jogador 2 venceu!', '');
        acabou = true;
      } else {
        mensagem('Jogador 2 está na casa', pontosJogador2.value.toString());

        if (dadoUm == dadoDois) {
          vez.value = 'jog2';
          mensagem('Você tirou dados iguais!', 'Jogue novamente');
        } else {
          vez.value = 'jog1';
        }
      }
    }
  }

  jogarNovamente() {
    acabou = false;
    pontosJogador1.value = 0;
    pontosJogador2.value = 0;
    p1 = 0;
    p2 = 0;
    vez.value = 'jog1';
  }

  mostrarJogador() {
    if (vez.value == 'jog1') {
      return '1';
    } else {
      return '2';
    }
  }

  //REGRAS:
  //ESCADAS:
  //BASE: 2... TOPO: 38
  //BASE: 7... TOPO: 14
  //BASE: 8... TOPO: 31
  //BASE: 15... TOPO: 26
  //BASE: 21... TOPO: 42
  //BASE: 28... TOPO: 84
  //BASE: 36... TOPO: 44
  //BASE: 51... TOPO: 67
  //BASE: 71... TOPO: 91
  //BASE: 78... TOPO: 98
  //BASE: 87... TOPO: 94

  //COBRAS:
  //CABEÇA: 99... RABO: 80
  //CABEÇA: 95... RABO: 75
  //CABEÇA: 92... RABO: 88
  //CABEÇA: 89... RABO: 68
  //CABEÇA: 74... RABO: 53
  //CABEÇA: 64... RABO: 60
  //CABEÇA: 62... RABO: 19
  //CABEÇA: 49... RABO: 11
  //CABEÇA: 46... RABO: 25
  //CABEÇA: 16... RABO: 6
}
