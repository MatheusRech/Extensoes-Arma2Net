Este projeto visa criar exetensões para o jogo arma 3 a partir da extensão Arma2NET

Arma2NET é uma extensão para Arma 3 que disponibiliza a execução de codigos C#, python, F#, entre outros.

Lista de extensões criadas:

AutoRestart:

Esta extensão realiza a execução de um arqivo de extensão bat, para atualizar a missão do servidor e reiniciar o servidor.

Para que ele funcione o arquivo RJ-AtualizarMissao.bat deve estar no diretorio do servidor junto com o RJ-Iniciar.bat
Você deve configurar as variaveis de controle nos dois bats
São elas:
set NomeMissao=nome da missao Exemplo: Minhamissao.Altis.pbo
set NomeSVMod=nome do ModServer Exemplo: MeuMod.pbo
set pathServer="path do server" Exemplo: "c:\server\"
set pathModAddons="path do mod/addons" Exemplo: "@Life\Addons"
set pathNovamissao="path da pasta com os novos arquivos" Ex: "missoes\novasMissoes" obs: esta pasta deve estar dentro da pasta do servidor

se alguma variavel estiver errada, tudo pode dar errado!!!!

Para executar o restart dentro de um script sqf execute:
_ret = ("Arma2Net" callExtension "AutoRestart");
diag_log Format["%1", _ret];

AutoRestart pode retornar:
"Arquivo exe não encontrado" - > o arquivo bat RJ-AtualizarMissao.bat, não esta na pasta do servidor
"Reiniciando" - > Executou o bat
outros erros são da execução do C#

