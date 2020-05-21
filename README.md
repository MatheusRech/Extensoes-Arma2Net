#Extensões para o Arma2NET
## Descrição
[Arma2NET GitHub] [gitArma2Net]
[Arma2NET Armaholic] [ArmaholicArma2Net]
[gitArma2Net]: https://github.com/ScottNZ/Arma2NET
[ArmaholicArma2Net]: http://www.armaholic.com/page.php?id=16269

Este projeto visa criar exetensões para o jogo arma 3 a partir da extensão Arma2NET

Arma2NET é uma extensão para Arma 3 que disponibiliza a execução de codigos C#, python, F#, entre outros.

**Busca**

[TOCM]

[TOC]


### Lista de extensões criadas:

###AutoRestart:

Esta extensão realiza a execução de um arqivo de extensão bat, para atualizar a missão do servidor e reiniciar o servidor.
#####Dependencias
######RJ-AtualizarMissao.bat 
O aquivo deve estar no diretorio do servidor.
É necesserario configurar as variáveis de controle no arquivo.

Variáveis:
set NomeMissao=nome da missao Exemplo: Minhamissao.Altis.pbo set NomeSVMod=nome do ModServer Exemplo: MeuMod.pbo 
set pathServer="path do server" Exemplo: "c:\server" 
set pathModAddons="path do mod/addons" Exemplo: "@Life\Addons" 
set pathNovamissao="path da pasta com os novos arquivos" Ex: "missoes\novasMissoes" obs: esta pasta deve estar dentro da pasta do servidor

######RJ-Iniciar.bat 
O aquivo deve estar no diretorio do servidor.
É necesserario configurar as variáveis de controle no arquivo.

Variáveis:
set pathServer="path do server" Exemplo: "c:\server"

#####Chamada da extensão

Para executar o restart dentro de um script sqf execute:

```sqf
_ret = ("Arma2Net" callExtension "AutoRestart"); 
diag_log Format["%1", _ret];
```


#####Retornos da execução

AutoRestart pode retornar: "Arquivo exe não encontrado" - > o arquivo bat RJ-AtualizarMissao.bat, não esta na pasta do servidor "Reiniciando" - > Executou o bat outros erros são da execução do C#
