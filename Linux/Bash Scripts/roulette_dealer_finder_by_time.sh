#!/bin/bash
awk -F "\t" '{print $1,$2,$5,$6}' $1_Dealer_schedule | grep $2 |grep $3 

