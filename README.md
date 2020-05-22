# Extensões para o Arma2NET
## Descrição

Este projeto visa criar exetensões para o jogo arma 3 a partir da extensão Arma2NET

Arma2NET é uma extensão para Arma 3 que disponibiliza a execução de codigos C#, python, F#, entre outros.

[Arma2NET GitHub](https://github.com/ScottNZ/Arma2NET)

[Arma2NET Armaholic](https://github.com/ScottNZ/Arma2NET)

### Lista de extensões criadas:

### AutoRestart:

Esta extensão realiza a execução de um arqivo de extensão bat, para atualizar a missão do servidor e reiniciar o servidor.
##### Dependencias
###### RJ-AtualizarMissao.bat 

O aquivo deve estar no diretorio do servidor.
É necesserario configurar as variáveis de controle no arquivo.

Variáveis:

set NomeMissao=nome da missao Exemplo: Minhamissao.Altis.pbo set NomeSVMod=nome do ModServer Exemplo: MeuMod.pbo

set pathServer="path do server" Exemplo: "c:\server" 

set pathModAddons="path do mod/addons" Exemplo: "@Life\Addons" 

set pathNovamissao="path da pasta com os novos arquivos" Ex: "missoes\novasMissoes" obs: esta pasta deve estar dentro da pasta do servidor

###### RJ-Iniciar.bat 
O aquivo deve estar no diretorio do servidor.

É necesserario configurar as variáveis de controle no arquivo.

Variáveis:

set pathServer="path do server" Exemplo: "c:\server"

##### Chamada da extensão

Para executar o restart dentro de um script sqf execute:

```sqf
If !(Call Compile ("Arma2Net" callExtension "AutoRestart")) Then {
  //Erro na execução
};
```

##### Retornos da execução

AutoRestart pode retornar:

"False" - > Ocorreu algum erro na execução da função

"True" - > A execução normalmente sem nenhuma falha 

#### Atualizações

**1.0.0.1**

Alterado o retorno da função, agora retorna true ou false, true para execução correta e false caso ocorra algum erro
