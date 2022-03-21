#!/bin/bash
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep 05 | grep AM
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep 08 | grep AM
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep 08 | grep PM
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep 02 | grep PM 
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule 0312_Dealer_schedule | grep 11 |grep PM
