function log2syslog
{
   declare COMMAND
   COMMAND=$(fc -ln -0)
   logger -p local1.notice -t bash -i -- "${SSH_CONNECTION} : user=${USER} : cwd=${PWD} : ${COMMAND}"
}
trap log2syslog DEBUG
