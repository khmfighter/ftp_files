#!/bin/bash
#ftp_ptn.sh 172.17.64.19 zhejiang XNftp@0128 ZJ-UTRAFFIC ptn ZJ-UTRAFFIC-HIS
ftp -n<<!
open $1
user $2 $3
binary
hash
lcd $4
cd $5
prompt
mput *
close
bye
!
mv $4/* $6