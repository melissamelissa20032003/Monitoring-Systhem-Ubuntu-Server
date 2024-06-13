#!/bin/bash


if [ '$1' == 1 ]; then
	python3 send_alert_ram
if ['$1' == 2 ]; then 
	 python3 mail_aler_utili
if [ '$1'== 3 ]; then
       python3 	
else
	echo 'aucun alert, tout vas bien'
