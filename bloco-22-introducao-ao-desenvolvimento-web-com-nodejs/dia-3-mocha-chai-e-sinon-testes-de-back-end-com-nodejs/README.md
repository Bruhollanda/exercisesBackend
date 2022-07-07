# Tipos de Teste

## ▶️  Testes unitários

    Trabalham presumindo um escopo limitado a um
    pequeno fragmento do seu código com interação
    mínima entre recursos externos.
    Exemplo: Uma função com um fim específico,
    como uma função que soma dois números.

## ▶️ Testes de Integração

    Trabalham presumindo a junção de múltiplos
    escopos (que tecnicamente devem possuir, cada
    um, seus próprios testes) com interações entre
    eles.
    Exemplo: Uma função de calculadora que usa
    funções menores que eu posso testar
    isoladamente/ de forma unitária:

## ▶️ Testes de Ponta-a-ponta

    Chamados também de Fim-a-fim (End-to-End; E2E)
    esses testes pressupõem um fluxo de interação
    completo com a aplicação, de uma ponta a
    outra. Aqui, poderíamos pensar uma API que
    utiliza nossa calculadora - assim como
    diversas outras funções mais complexas - na
    hora de realizar uma operação de venda de
    produtos. Esse teste é o mais completo, pois
    garante que todos os demais testes estão ou
    serão desenvolvidos.

