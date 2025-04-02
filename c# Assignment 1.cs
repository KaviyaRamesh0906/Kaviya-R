using System;
using System.Buffers.Text;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Intrinsics.X86;
using System.Security.Principal;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Transactions;
using static System.Formats.Asn1.AsnWriter;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace ControlStructures
{
    class Assignment1
    {
        public static void Main()
        {
            //In a bank, you have been given the task is to create a program that checks if a customer is eligible for
            //a loan based on their credit score and income.The eligibility criteria are as follows:
            //• Credit Score must be above 700.
            //• Annual Income must be at least $50,000.
            //Console.Write("Enter Credit Score: ");
            //int creditScore = Convert.ToInt32(Console.ReadLine());
            //Console.Write("Enter  Annual Income : ");
            //double annualIncome = Convert.ToDouble(Console.ReadLine());
            //if (creditScore > 700 && annualIncome >= 50000)
            //{
            //    Console.WriteLine("Eligible for  loan");
            //} else
            //{
            //    Console.WriteLine("Not Eligible for loan");
            //}

            //Task 2: Nested Conditional Statements
            //Console.Write("Enter  current balance: ");
            //double balance = Convert.ToDouble(Console.ReadLine());
            //Console.WriteLine(" \n1. Check Balance \n2. Withdraw \n3. Deposit");
            //Console.Write("choose a option: ");
            //int choice = Convert.ToInt32(Console.ReadLine());

            //if (choice == 1)
            //{
            //    Console.WriteLine($"your current balance: {balance}");
            //}

            //else if (choice == 2)
            //{
            //    Console.Write("Enter amount to withdraw: ");
            //    double withdraw = Convert.ToDouble(Console.ReadLine());

            //    if (withdraw > balance)
            //    {
            //        Console.WriteLine("Insufficient balance");
            //    }
            //    else if (withdraw % 100 != 0 || withdraw % 500 != 0)
            //    {
            //        Console.WriteLine("withdrawal amount should be in multiples of 100 or 500");
            //    }
            //    else
            //    {
            //        balance -= withdraw;
            //        Console.WriteLine($" Withdraw sucessfull!");

            //    }
            //}

            //else if (choice == 3)
            //{
            //    Console.Write("enter deposit amount: ");
            //    double deposit = Convert.ToDouble(Console.ReadLine());

            //    if (deposit > 0)
            //    {
            //        balance += deposit;
            //        Console.WriteLine($"Deposit succesful !new balance:{balance}");
            //    }
            //    else
            //        Console.WriteLine("Deposit Amount should not be null");
            //}
            //else
            //{
            //    Console.WriteLine("Invalid Option");
            //}


            //Task-3 Loop Structures
            //Console.Write("enter the number of customers: ");
            //int customers = Convert.ToInt32(Console.ReadLine());
            //for (int i = 1; i <= customers; i++)
            //{
            //    Console.WriteLine($"\ncustomer {i}:");
            //    Console.WriteLine("enter initial balance: ");
            //    double initialBalance = Convert.ToDouble(Console.ReadLine());
            //    Console.WriteLine("enter annual interest: ");
            //    double interestRate = Convert.ToDouble(Console.ReadLine());
            //    Console.Write("enter number of years: ");
            //    int years = Convert.ToInt32(Console.ReadLine());
            //    double futureBalance = initialBalance * Math.Pow((1 + interestRate / 100), years);
            //    Console.WriteLine($"future Balance after " + years + " years: " + Math.Round(futureBalance, 2));
            //}

            ////Tak-4 Looping, Array and Data Validation
            //Console.Write("enter number of customers: ");
            //int Customers = Convert.ToInt32(Console.ReadLine());
            //string[] accountNumbers = new string[Customers];
            //double[] balance = new double[Customers];
            //for (int i = 0; i < Customers; i++)
            //{
            //    while(true)
            //    {
            //        Console.Write("Enter your account number:");
            //        accountNumbers = Console.ReadLine();
            //        if (accountNumbers.Length == 8 && accountNumbers.ToUpper().StartsWith("INDB") && int.TryParse(accountNumbers.Substring(4), out _)) ;


            //    }
            //}

            //Task 5: Password Validation

            //Console.Write("Enter your password: ");
            //string Password = Console.ReadLine();
            //if (Password.Length >= 8 && Password != Password.ToLower() && Password != Password.ToUpper() && Password.Any(char.IsDigit)) 
            //{
            //    Console.WriteLine("valid PASSWORD");
            //}

            //else
            //    {
            //        Console.WriteLine("invalid PASSWORD");
            //    }

            //Task 6: Password Validation
//            string transactions = "";
//            string userInput = "";
//            do
//            {
//                Console.WriteLine("Choose transaction:");
//                Console.WriteLine("1.Deposit");
//                Console.WriteLine("2.withdraw");
//                Console.WriteLine("3.exit");
//                Console.WriteLine("Enter your option: ");
//                userInput = Console.ReadLine();
//                if (userInput == "1")
//                {
//                    Console.WriteLine("enterr amount to deposit: ");
//                    string amount = Console.ReadLine();
//                    transactions += ($"Deposit: {amount}\n");
//                }
//                else if (userInput == "2")
//                {
//                    Console.WriteLine("Enter the amount to withdraw: ");
//                    string amount = Console.ReadLine();
//                    transactions += ($"Withdrawal: {amount}\n");
//                }
//            }while (userInput != "3");
//            Console.WriteLine("\nTransactionistory:");
//            Console.WriteLine(transactions);
//        }
//    }
//}



          
  

















        

