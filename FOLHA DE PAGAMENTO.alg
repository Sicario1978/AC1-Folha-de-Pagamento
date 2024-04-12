Algoritmo "FOLHA DE PAGAMENTO"


   // Título: Avaliação AC1 - Folha de Pagamento
   // Data: 09/04/2024
   // Autor: Marcos André Trajano Silva RA:241001413
   // Autor: Samuel Aparecido Santos Silva RA:231007220


Var


   // VARIÁVEIS
   
   Nome: caracter
   SalBase, SalHora, SalLiquido, Salario, HoraExtra, IRPF, INSS, Desconto, DescontoTotal: real
   HorasTrabalhadas, HorasExtrasTrabalhadas: inteiro

Inicio


   // INÍCIO DO ALGORITIMO
   
   escreval( "-FOLHA DE PAGAMENTO-" )
   escreval()
   escreval()
   escreval( "-DADOS DO COLABORADOR-" )
   escreval()
   escreval( "-DIGITE SEUS DADOS A SEGUIR!-" )
   escreval()
   escreva( "Nome do colaborador: " )
   leia( Nome )
   escreva( "Digite o Valor do seu Salário Base: R$ " )
   leia( SalBase )
   escreva( "Digite a quantidade de Horas trabalhadas no mês: " )
   leia( HorasTrabalhadas )
   SalHora := SalBase / 160
   
   escreval()
   
   //HORAS TRABALHADAS
   
   se HorasTrabalhadas >= 160 entao
      SalLiquido := HorasTrabalhadas * SalHora
      HoraExtra := SalLiquido - SalHora * 160
      HorasExtrasTrabalhadas := HorasTrabalhadas - 160
      escreval( "-INFORMATIVO-" )
      escreval( nome, " você trabalhou um total de",HorasTrabalhadas, " horas. Sendo",HorasExtrasTrabalhadas, " horas extras! " )
   senao
      SalLiquido := HorasTrabalhadas * SalHora
      Desconto := SalLiquido - SalHora * 160
      escreval( nome, " você trabalhou um total de",HorasTrabalhadas, " horas. Sendo",HorasExtrasTrabalhadas, " horas extras!" )
   fimse
   
   
   //INFORMATIVO
   escreval()
   escreval( "-VENCIMENTOS-" )
   escreval( nome, " esse é o Total dos seus Vencimentos: R$",SalLiquido,",00" )
   escreval()
   escreval( "-DESCONTO-" )
   
   
   //INSS
   escreval( "Desconto Referente INSS" )
   se SalBase <= 1412 entao
      INSS := SalBase * 0.075
      escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
   senao
      se ( SalBase > 1412 ) e ( SalBase <= 2666.68 ) entao
         INSS := ( SalBase - 1412 ) * 0.09
         INSS := INSS + 105.9
         escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
      senao
         se ( SalBase > 2666.68 ) e ( SalBase <= 4000.03 ) entao
            INSS := ( SalBase - 2666.68 ) * 0.12
            INSS := INSS + 105.9 + 112.92
            escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
         senao
            se ( SalBase > 4000.03 ) e ( SalBase <= 7786.02 ) entao
               INSS := ( SalBase - 4000.03 ) * 0.14
               INSS := INSS + 105.9 + 112.92 + 160
               escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )

            senao INSS := ( 7786.02 - 4000.03 ) * 0.14
               INSS := INSS + 105.9 + 112.92 + 160
               escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
            fimse
         fimse
      fimse
   fimse
   escreval()
   escreval( "-DESCONTO-" )
   
   
   //IRPF - IMPOSTO DE RENDA
   escreval( "Desconto Referente IRPF" )
   se SalLiquido <= 2259.20 entao
      escreval( "Você não tem Desconto referente imposto de renda!" )
   senao
      se ( SalLiquido > 2259.20 ) e ( SalLiquido <= 2826.65 ) entao
         IRPF := SalLiquido * 0.750
         IRPF := IRPF - 169.44
         escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )
      senao
         se ( SalLiquido > 2826.65 ) e ( SalLiquido <= 3751.05 ) entao
            IRPF := SalLiquido * 0.155
            IRPF := IRPF - 381.44
            escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )
         senao
            se ( SalLiquido > 3751.05 ) e ( SalLiquido <= 4664 ) entao
               IRPF := SalLiquido * 0.225
               IRPF := IRPF - 662.77
               escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )

            senao ( SalLiquido > 4664 ) entao
               IRPF := SalLiquido * 0.275
               IRPF := IRPF - 896
               escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )
            fimse
         fimse
      fimse
   fimse


   //DESCONTOS
   DescontoTotal := INSS + IRPF + Desconto
   Salario := SalLiquido - DescontoTotal

   
   //FECHAMENTO
   escreval()
   escreval( "-FECHAMENTO-" )
   escreval( "Colaborador: ", Nome )
   escreval( "Sálario Base: R$", SalBase )
   escreval( "Total de Horas Trabalhadas:", HorasTrabalhadas,"hrs." )
   escreval( "Quantidade de Horas Extras Trabalhadas:", HorasExtrasTrabalhadas,"hrs." )
   escreval( "Valor referente horas extras: R$", HoraExtra )
   escreval( "Desconto por atraso: R$", Desconto )
   escreval( "Vencimentos: R$", SalLiquido,",00" )
   escreval( "INSS Retido na fonte: R$", INSS )
   escreval( "IRPF Retido na fonte: R$", IRPF )
   escreval( "Desconto total: R$", DescontoTotal )
   escreval( "Sálario a Receber: R$", Salario )
   
   
   // FIM DO ALGORITIMO
Fimalgoritmo
