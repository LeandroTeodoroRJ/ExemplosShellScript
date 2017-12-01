######################################################
#     Gerando Arquivos de Log com o rsyslog
######################################################
:<< 'Comment'
GERANDO LOGS COM O GERENCIADOR DE LOGS RSYSLOG
Criar um arquivo de log dentro do diretório de configuração do rsyslog
(/etc/rsyslog.d) com o nome de por exemplo user_log.conf
Dentro do arquivo de user_log.conf adicionar as linhas com as definições
para redirecionamento dos logs, por exemplo:
#Direcionamento de Logs
local0.*    /var/log/scripts.log

OBSs:
1. local0 é o facility para uso geral (podendo ser de 0 a 7), 
o * direciona todos os tipos de prioridade de logs para 
/var/log/scripts.log , mas isso pode ser alterado filtrando os 
direcionamentos de logs por tipo, por exemplo:
local0.notice    /var/log/scripts_log.notice
local0.err   	 /var/log/scripts_log.err

2. Alguns tipos de prioridade para logs: debug, info, notice,
warning, warn, err, error, crit, alert, emerg, panic

Após criação do arquivo reiniciar o rsyslog com o comando
$systemctl restart rsyslog

COMANDO LOGGER: Faz com que uma nova mensagem de log seja adicionada 
		ao arquivo de log indicado nas configurações do gerenciador 
		de log do sistema.

Resultado no arquivo de log:
<data> <hora> <nome da máquina> <usuário> <mensagem de log>

Exemplo de uso do comando:
logger -p local0.err "Mensagem de erro"
onde:
local0: facility do gerenciador de log
err: tipo de log
Resultado no arquivo de log:
<data> <hora> <nome da máquina> <usuário> "Mensagem de erro"

logger -p local0.err -t [Script do Usuário] "Mensagem de erro"
onde:
-t : inseri uma tag
[Script do Usuário] : tag definida para ser gravada na linha de log
Resultado no arquivo de log:
<data> <hora> <nome da máquina> [Script do Usuário] "Mensagem de erro"
Comment

#!/bin/bash
echo "Inicio do script..."
logger -p local0.err -t [Script do Usuário] "Mensagem para o log."
echo "Fim do script."

exit 0
#[Resultado no arquivo /var/log/scripts.log]
#Dec  1 19:05:58 VirtualBox [Script: do Usuário] Mensagem para o log.
