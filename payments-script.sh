#!/usr/bin/env bash

# This script controls your company's payments, adds and queries who paid. You don't need paper or pen ink anymore, it's simple. It shows the date and time of the payer by recording everything in a file so that you can easily manage it.

clear
function mainmenu () {

        TIME=2
        echo ""
        echo "COMPANY PAYMENTS REPORT"
        echo ""
        echo "Choose an option below to get started!

                1- Add paying
                2- Consult payers
                0- Exit the system"
        echo ""
        echo -n "Chosen option: "
        read option
        case $option in
                1)
                        function add () {
                                date=`date +%d/%m/%y`
                                time=`date | cut -d " " -f 5`
                                echo -n "Enter the person's name: "
                                read name
                                echo -n "Enter the amount paid: "
                                read value
                                echo "$name -> $value paid on the day: $date at $time" >> /home/user/list-payers.txt # Place the directory of
                                                                                                     # list of payers.
                                                                                                     # Example: /home/user/list-payers.txt
                                                                                                     # Create a file with the name <list-payers.txt>
                                }
                                add
                                echo ""
                                read -n 1 -p "<Enter> for main menu"
                                mainmenu
                                ;;
                2)
                        function consult () {
                                echo The list of paying people is below:
                                echo ""
                                cat /home/user/list-payers.txt
                                }
                                consult
                                echo ""
                                read -n 1 -p "<Enter> for main menu"
                                mainmenu
                                ;;
                0)
                        function goout () {
                                exit 0

                        }
                        ;;
                *)
                        echo Invalid option, try again!
                        ;;

       esac
           }
           mainmenu
