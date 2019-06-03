@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Jun 01 17:15:34 +0800 2019
REM SW Build 2258646 on Thu Jun 14 20:03:12 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 211650ebea85420f8cf47f9edc201723 --incr --debug typical --relax --mt 2 -L fifo_generator_v13_2_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot spi_receive_tbh_behav xil_defaultlib.spi_receive_tbh xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0